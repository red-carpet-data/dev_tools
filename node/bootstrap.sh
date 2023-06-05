echo "set a valid location for your react app" 
echo "it will be created as a subdirectory of the path you choose"
echo "if you are using ming on windows it should look something like: /e/repos"
read location
app_location=$(echo "$location"|sed 's/\(.*\)\/$/\1/g')
echo "name your react app"
read app_name
mkdir $app_location/$app_name
#docker build -f ./NPMBootstrapDockerfile -t bootnpm .
echo "creating container using specified name"
docker build --build-arg app_name=$app_name -t $app_name .
docker run -d -p 3000:3000/tcp --mount type=bind,src=$app_location/,target=/app --name $app_name $app_name
#some examples of running docker commands on the instance without logging in
#remove winpty if not running on windows
#   winpty docker exec $app_name bash -c "npm install -g create-react-app"
#   winpty docker exec bootnpm bash -c "cd app && npm init react-app $app_name --use-npm"
winpty docker exec $app_name bash -c "npx create-react-app $app_name"
winpty docker exec -it $app_name bash
