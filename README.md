This is an implementation of [Mask R-CNN](https://github.com/matterport/Mask_RCNN) from Matterport 

Based on using Dockerfile at the moment, since cuda / gpu is super annoying.

Steps: 

1. Add balloon dataset to datasets/balloon. Find it [here](https://github.com/matterport/Mask_RCNN/releases/download/v2.1/balloon_dataset.zip)
2. `docker build -t mrcnn .`
3. `docker run -it mrcnn /bin/bash`
4. Make sure you cd into the correct directory; 'samples/balloon'
5. `python3 balloon.py train --dataset=/datasets/balloon --weights=coco`