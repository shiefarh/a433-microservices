#build docker image
docker build -t shiefarh/karsajobs:latest .

#login ke docker hub
docker login

#push image ke docker hub
docker push shiefarh/karsajobs:latest