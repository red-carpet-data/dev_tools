echo "enter the location of the container [/mnt/e/repos/wasp]"
read app_location
app_location=${app_location:-/mnt/e/repos/wasp}
echo "enter the name of the container [react]"
docker stop wasp
docker run -d -p 3000:3000/tcp --mount type=bind,src=$app_location/,target=/wasp --name wasp wasp
echo "logging into client"
docker exec -it wasp bash
# to start with polling (at least on windows) 
