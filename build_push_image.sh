#membuat doker image dari dockerfile
docker build -t item-app:v1 .

#melihat daftar images lokal
docker images

#mengubah nama image agar sesuai dengan format dockerhub
docker tag item-app:v1 shiefarh/item-app:v1

#login ke dockerhub
docker login 

#mengunggah image ke dockerhub
docker push shiefarh/item-app:v1

