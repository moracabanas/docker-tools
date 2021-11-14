#!/bin/bash 
# https://github.com/awslabs/benchmark-ai/issues/17
docker run -it --rm --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 \
nvcr.io/nvidia/$image:$tag

