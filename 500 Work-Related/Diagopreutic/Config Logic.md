
```python 

CONFIG = {

# Pellet detection parameters

'pellet_diameter_mm': 6.0,

'min_pellet_area': 100, # New: Minimum area (pi * radius^2) to filter small circles

'min_disks_expected': 1, # Warn if fewer detected

# Petri dish crop config

'blur_kernel': (5, 5),

'invert_threshold': False,

'morph_kernel_size': 5,

'min_contour_area': 10000,

'circularity_threshold': 0.7,

# Hough circle params for pellet detection

'disk_blur_kernel': (11, 11),

'hough_dp': 1.2,

'hough_min_dist': 30,

'hough_param1': 120,

'hough_param2': 25,

'hough_min_radius': 12, # Threshold to avoid small circles

'hough_max_radius': 30,

# Preprocessing parameters

'clahe_clip_limit': 4.0,

'median_kernel_size': 5,

# Medium-specific thresholds

'medium_thresholds': {

'blood': {'min_pellet_intensity': 90, 'clahe_clip_limit': 3.5},

'standard': {'min_pellet_intensity': 110, 'clahe_clip_limit': 4.0}

}

}
```