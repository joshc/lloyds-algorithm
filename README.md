# Lloyd's algorithm

This is an implementation of Lloyd's algorithm (also commonly known as K-means clustering) in MATLAB, run on a fabricated data set of points randomly chosen from the uniform data set X = [-1, 1] x [-1, 1]. Cluster centers are initialized at random from the fabricated data set. It includes parameters to choose K (number of clusters) and N (number of data points), and a depiction of Lloyd's algorithm. Please refer to the program files for more information.

## Instructions to run:

1. Download all of the files here into a directory in the MATLAB path.
2. Run 'lloyds_anim.m' in MATLAB.
3. Input chosen values for K and N (default values provided).

## Examples of results generated using this program:

Varying levels of K and N as allowed by the program, we examine the convergence of Lloyd's algorithm to K cluster centers. The red asterisks denote cluster centers, and the dotted lines represent lines from each point in a cluster to that cluster's center.

### For K = 9, N = 100:

![Image of Lloyd's Algorithm](http://i.imgur.com/O6HlMN2.gif)

### For K = 27, N = 300:

![Image of Lloyd's Algorithm](http://i.imgur.com/ocZjdFS.gif)

### Additional resources:

1. [K-means clustering](https://en.wikipedia.org/wiki/K-means_clustering)
2. [Lloyd's algorithm](https://en.wikipedia.org/wiki/Lloyd's_algorithm)
