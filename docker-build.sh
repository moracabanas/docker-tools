#!/bin/bash  
  
image="repo/image"  
  
#get timestamp for the tag  
timestamp=$(date +%Y.%m.%d.%H.%M.%S)  
  
tag=$image:$timestamp  
latest=$image:latest  
  
#build image  
sudo docker build -t $tag . 
sudo docker tag $tag $latest 
  
#push to dockerhub  
sudo docker login  
#sudo docker login -u username -p password  
#sudo docker push $tag  
  
#remove dangling images  
#sudo docker system prune -f  
  