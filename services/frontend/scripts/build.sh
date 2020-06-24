#!/bin/sh

echo "building image"
docker build -t devilias/app-frontend ../

echo "pushing to dockerhub"
docker push devilias/app-frontend
