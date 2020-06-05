This is an implementation of [Mask R-CNN](https://github.com/matterport/Mask_RCNN) from Matterport 

Based on using Dockerfile at the moment, since cuda / gpu is super annoying.

### For Balloon Dataset (default dataset)

Steps: 

1. Add balloon dataset to datasets/balloon. Find it [here](https://github.com/matterport/Mask_RCNN/releases/download/v2.1/balloon_dataset.zip)
2. `docker build -t mrcnn .`
3. `docker run -it mrcnn /bin/bash`
4. Make sure you cd into the correct directory; 'samples/balloon'
5. `python3 balloon.py train --dataset=/maskrcnn/datasets/balloon --weights=coco`
(untested up to this point)

### Labelling Images

I normally use an online website to label the images, found [here](http://www.robots.ox.ac.uk/~vgg/software/via/via.html). Make sure you "export" the annotations (go to "Annotations" -> Export as Json"). The format should be the same (including same name) as the one in the balloon dataset. 

Todos:

Adding in GPU support 

