#!/bin/bash
read -e -p 'choose your wasp directory: ' -i '/mnt/e/repos/dev_tools/wasp' wasp_directory
#docker build -f ./NPMBootstrapDockerfile -t bootnpm .
echo "creating a wasp container in the wasp directory $wasp_directory"
docker build  -t wasp .
docker run -d -p 3000:3000/tcp --mount type=bind,src=$wasp_directory/,target=/wasp --name wasp wasp
#some examples of running docker commands on the instance without logging in
#remove winpty if not running on windows
#   winpty docker exec $app_name bash -c "npm install -g create-react-app"
#   winpty docker exec bootnpm bash -c "cd app && npm init react-app $app_name --use-npm"
docker exec -it wasp bash
