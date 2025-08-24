
```python
# pellet_detection.py (Hough circle-based logic with threshold to avoid small circles)

# Filters out small circles using hough_min_radius and min_pellet_area

  

import cv2

import numpy as np

import math

from typing import List

from models import Circle

from config import CONFIG

from enhancement_filtering import detect_medium_type

from image_acquisition import to_hsv

  

def detect_pellets(detection_channel: np.ndarray, img: np.ndarray, config: dict = CONFIG) -> List[Circle]:

"""

Detects antibiotic disks (pellets) on the cropped Petri dish using Hough circles detection.

Filters out small circles using min radius and area thresholds.

:param detection_channel: Grayscale or enhanced image (e.g., blue channel) for detection.

:param img: Cropped Petri dish image (BGR) for medium type detection.

:param config: Configuration dictionary with Hough parameters.

:return: List of Circle objects (centers and radii).

"""

print("detect_pellets: Starting with detection_channel shape", detection_channel.shape if isinstance(detection_channel, np.ndarray) else type(detection_channel))

print("detect_pellets: img shape", img.shape if isinstance(img, np.ndarray) else type(img))

print("detect_pellets: config type", type(config), "content", config)

# Validate inputs

if not isinstance(detection_channel, np.ndarray):

raise TypeError(f"detection_channel must be a NumPy array, got type {type(detection_channel)}: {detection_channel}")

if not isinstance(img, np.ndarray):

raise TypeError(f"img must be a NumPy array, got type {type(img)}: {img}")

if not isinstance(config, dict):

raise TypeError(f"config must be a dictionary, got type {type(config)}: {config}")

# Detect medium type for adaptation

hsv = to_hsv(img)

medium_type = detect_medium_type(hsv)

print(f"Detected medium type: {medium_type}")

# Safely access medium_thresholds for CLAHE

print("detect_pellets: Accessing config['medium_thresholds']")

try:

medium_config = config.get('medium_thresholds', {}).get(medium_type, config.get('medium_thresholds', {}).get('standard', {}))

clahe_clip_limit = medium_config.get('clahe_clip_limit', config.get('clahe_clip_limit', 4.0))

except Exception as e:

print(f"Error accessing medium_thresholds: {str(e)}. Using default CLAHE clip limit.")

clahe_clip_limit = config.get('clahe_clip_limit', 4.0)

# Preprocessing: Apply CLAHE for contrast enhancement

print("detect_pellets: Applying CLAHE with clipLimit", clahe_clip_limit)

clahe = cv2.createCLAHE(clipLimit=clahe_clip_limit, tileGridSize=(8, 8))

enhanced = clahe.apply(detection_channel)

cv2.imwrite('debug_output/debug_enhanced.jpg', enhanced)

# Apply Gaussian blur for Hough circles

print("detect_pellets: Accessing config['disk_blur_kernel']")

blur = cv2.GaussianBlur(enhanced, config.get('disk_blur_kernel', (11, 11)), 0)

cv2.imwrite('debug_output/debug_blurred.jpg', blur)

# Hough circles detection

print("detect_pellets: Accessing Hough parameters")

circles = cv2.HoughCircles(

blur, cv2.HOUGH_GRADIENT,

dp=config.get('hough_dp', 1.2),

minDist=config.get('hough_min_dist', 30),

param1=config.get('hough_param1', 120),

param2=config.get('hough_param2', 25),

minRadius=config.get('hough_min_radius', 12),

maxRadius=config.get('hough_max_radius', 30)

)

pellets = []

if circles is not None:

circles = np.uint16(np.around(circles[0, :]))

print(f"detect_pellets: Hough detected {len(circles)} circles")

min_pellet_area = config.get('min_pellet_area', 100) # Area threshold to filter small circles

for c in circles:

center = (float(c[0]), float(c[1]))

radius = float(c[2])

# Compute area to filter out small circles

area = math.pi * radius ** 2

if area < min_pellet_area:

print(f"detect_pellets: Skipping small circle at center={center}, radius={radius:.1f}, area={area:.1f}")

continue

pellets.append(Circle(center, radius))

print(f"detect_pellets: Pellet detected at center={center}, radius={radius:.1f}, area={area:.1f}")

# Sort by position (y then x for consistent ordering)

pellets.sort(key=lambda p: (p.center[1], p.center[0]))

# Debug: Draw circles on image copy

debug_img = img.copy()

for p in pellets:

cv2.circle(debug_img, (int(p.center[0]), int(p.center[1])), int(p.radius), (0, 0, 255), 2) # Red circles

cv2.imwrite('debug_output/debug_pellets.jpg', debug_img)

print(f"Saved 'debug_output/debug_pellets.jpg' - check if red circles are around the pellets. Detected: {len(pellets)}")

# Warn if fewer pellets than expected

print("detect_pellets: Accessing config['min_disks_expected']")

if len(pellets) < config.get('min_disks_expected', 1):

print("Warning: Fewer pellets detected than expected - tune Hough parameters (e.g., hough_param2, hough_min_radius, min_pellet_area).")

return pellets
```