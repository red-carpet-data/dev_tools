echo "enter the location of the container"
read app_location
echo "enter the name of the container"
read TAG
echo $TAG
docker stop $TAG
docker run -d -p 3000:3000/tcp --mount type=bind,src=$app_location/,target=/app --name $TAG $TAG
echo "logging into client"
winpty docker exec -it $TAG bash
# to start with polling (at least on windows) 
