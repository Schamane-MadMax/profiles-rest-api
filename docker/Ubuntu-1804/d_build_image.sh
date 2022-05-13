#!/bin/bash
projectName="django-rest-api"
projectPath="/mnt/c/Users/mhent/Courses/$projectName"

envsubst < ./tempDockerfile > ./Dockerfile

conName="cont_$projectName"
imgName="img_$projectName"
volName="vol_$projectName"

docker stop $contName
docker rm $contName

docker build -t $imgName
docker volume create $volName
docker run -itd --name $conName --rm --mount type=bind,source=$projectPath,target=/opt/course/$projectName $imgName
docker attach $conName



#docker volume remove python_project

