echo "building image"
docker build -t devilias/app-backend ../

echo "pushing to dockerhub"
docker push devilias/app-backend
