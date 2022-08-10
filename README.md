# Automated-Extraction-of-Roads-from-Satellite-Images
The need of the extraction of the road images is that it helps in the generation of the 
maps, thus making it useful in the car navigation etc. Roads are an important parameter in urban 
planning, thus maintaining a record of roads makes urban planning a little tedious. The task is to identify the road within the digital-satellite 
images, which are of low resolution with high noise, by reducing the noise and enhancing it. In the 
automated method for the extraction of the roads, a conversion of roads is done into road vectors. 
Road vectorization relies on the thought of road formation map clustering. The road area extraction 
technique focuses on segmentation, classification and post processing. These include graph-based 
algorithms, edge-based algorithms, multiscale and threshold segmentation. The aim of the post 
processing technique is to optimize the results obtained in the form of extracted roads by fixing 
the road points and tracking the road routes.

# Methodology
(a) Image Segmentation:

Segmentation in its simplest sense means portioning a digital image into different segments. The 
aim of segmentation is to do simplification and change the image representation into a more 
meaningful and easier to analyse entity. [1] The location of boundaries such as lines or curves within 
an image is detected by the image segmentation. Thus, a label is assigned to every pixel in an 
image and pixels which are in the same label have the same visual characteristics like colour, 
intensity or texture.

(b) Edge Detection

 In the ideal case, the result of implementing an edge 
detector to an image can lead to a set of connected curves which will detect the object boundaries, 
which includes the boundaries of the surface markings and as well as those curves which 
correspond to the surface discontinuities. Thus, applying this technique significantly reduces 
the amount of data to be processed and filters out information which is less relevant, at the same 
time preserving the image structural properties.

(c) Extraction Algorithm

The input image is first converted into grayscale and then it is adjusted to the threshold range 
values. The image obtained is converted into a binary image. Then, a median filter is applied to 
remove the noise but the image may still have other unwanted objects which are removed by 
morphological operations. Morphological operations are used to remove the unwanted pixels by 
determining the background and the foreground of the image. Gradient filter is applied to extract 
the edges of the roads, sobel operator is used to detect edges with great accuracy.

(d) Vector Respresentation of Roads

This process is divided into two main steps as road key point identification and road key point connection. In the first part of road key point identification, the road raster map which is obtained from the road detection process, is segmented into various adjacent road patches which are based on the image space clustering algorithm. The centroid of each road patch is taken as a key point when the clustering is applied on them. In the second part, the occurrence of common road pixels between adjacent road patches are used as the key for connecting, this is done to ensure the correct connections between the identified key points.
