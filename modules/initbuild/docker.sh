#!/bin/bash

build_folder=$1
ecr_id=$2
region=$3

echo $build_folder

aws ecr get-login-password --region $region | docker login --username AWS --password-stdin $ecr_id.dkr.ecr.$region.amazonaws.com

echo "Time to buil image" 

docker build -t demo3 $build_folder

docker tag demo3:latest $ecr_id.dkr.ecr.$region.amazonaws.com/demo3:latest

docker push $ecr_id.dkr.ecr.$region.amazonaws.com/demo3:latest

echo "Done."

docker rmi -f demo3

echo "Cleaning images stage 1!"

docker rmi -f $ecr_id.dkr.ecr.$region.amazonaws.com/demo3:latest

echo "Cleaning images stage 2!"