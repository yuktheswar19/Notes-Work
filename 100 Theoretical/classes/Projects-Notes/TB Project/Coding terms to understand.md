

```
fig , ax = plt.subplots(figsize=(5,5))
```

-  fig, ax = plt.subplots(figsize=(5,5)) creates a blank canvas (`fig`) and a drawing area (`ax`) with a size of 5x5 inches for making a plot


# Keras utils 

- keras.utils is a collection of **helper functions** that make common deep learning tasks easier, like preparing data, plotting models, and setting learning rates.

	**Detailed:**

	- `keras.utils` contains **tools** to help with model building and training.
    
	- It includes things like:
    
	    - Converting labels into one-hot encoding (`to_categorical`).
        
	    - Plotting the structure of models (`plot_model`).
        
	    - Loading datasets.
        
	    - Customizing training schedules (like learning rate decay).
        
	- You don't train models directly with it — it's **support stuff** to make your life easier.







```
data = tf.keras.utils.image_dataset_from_directory('path')
```


This line loads images from the folder `/home/yuk/Documents/BigProject/Dataset` and automatically makes a TensorFlow **dataset** ready for training a machine learning model

**Detailed:**

- `tf.keras.utils.image_dataset_from_directory()` reads all images from a folder.

- It automatically labels images based on subfolder names (each subfolder = one class).

- It organizes the images into batches (default: 32 images per batch).

- The output is a TensorFlow **dataset object** you can directly use to train models.





# Normalization


```
data = data.map(lambda x,y : (x/255.0, y))

data.as_numpy_iterator().next()
```

In image processing and machine learning, it's common practice to normalize image pixel values from the range [0, 255] to [0, 1]

- **Improved Numerical Stability**: Neural networks perform better when input values are within a consistent range. Pixel values in the [0, 1] range help prevent issues like exploding or vanishing gradients during training. ​

	-**Faster Convergence**: Normalized inputs can lead to faster and more stable convergence during the training process, as the model's weights adjust more efficiently. ​