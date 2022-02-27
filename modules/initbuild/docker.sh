#!/bin/bash

build_folder = $1
ecr_id = $2
region = $3

aws ecr get-login-password --region $region | docker login --username AWS --password-stdin $ecr_id.dkr.ecr.$region.amazonaws.com

docker build -t demo3 $build_folder

docker tag demo3:latest $ecr_id.dkr.ecr.$region.amazonaws.com/demo3:latest

docker push $ecr_id.dkr.ecr.$region.amazonaws.com/demo3:latest