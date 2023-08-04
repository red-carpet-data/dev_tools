echo "enter the location of the container [/mnt/e/repos]"
read app_location
app_location=${app_location:-/mnt/e/repos}
echo "enter the name of the container [react]"
read TAG
TAG=${TAG:-react}
echo $TAG
docker stop $TAG
docker run -d -p 3000:3000/tcp --mount type=bind,src=$app_location/,target=/app --name $TAG $TAG
echo "logging into client"
docker exec -it $TAG bash
# to start with polling (at least on windows) 
