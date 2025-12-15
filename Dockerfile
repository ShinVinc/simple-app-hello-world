# Gunakan base image resmi dari Node.js
FROM node:18-alpine

# Buat direktori aplikasi
WORKDIR /usr/src/app

# Salin package.json dan package-lock.json (jika ada)
COPY package*.json ./

# Install dependensi
RUN npm install

# Salin kode sumber aplikasi
COPY . .

# Aplikasi berjalan di port ini
EXPOSE 3000

# Perintah untuk menjalankan aplikasi ketika container dimulai
CMD [ "node", "server.js" ]