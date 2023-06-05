export TAG=rs_app
echo $TAG
docker stop $TAG
docker rm $TAG
docker build  -t $TAG .
docker run -d --mount type=bind,src=/e/repos/renter_supplier,target=/app --name $TAG $TAG
echo "LOGGING IN"
winpty docker exec -it $TAG bash