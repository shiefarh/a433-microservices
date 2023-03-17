#build docker image
docker build -t shiefarh/karsajobs-ui:latest .

#login ke docker hub
docker login

#push image ke docker hub
docker push shiefarh/karsajobs-ui:latest