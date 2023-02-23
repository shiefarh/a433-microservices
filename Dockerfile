#menggunakan base image node.js versi 14
FROM node:14.5.0-alpine

#menentukan working directory
WORKDIR /app

#menyalin selurug source code ke working directory container
COPY . .

#menentukan aplikasi berjalan di production mode dan menggunakan container database itemdb
ENV NODE_ENV=production DB_HOST=item-db

#menginstall dependecies utk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

#ekspos port 8080
EXPOSE 8080

#menjalankan server dengan npm start
CMD ["npm", "start"]
