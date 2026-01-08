# 1. Temel imajı seç (Node.js'in hafif versiyonu)
FROM node:18-alpine

# 2. Çalışma dizini oluştur
WORKDIR /app

# 3. Bağımlılıkları kopyala ve yükle
COPY package*.json ./
RUN npm install

# 4. Uygulama kodlarını kopyala
COPY . .

# 5. Uygulamanın hangi portta çalışacağını belirt
EXPOSE 3000

# 6. Uygulamayı başlat
CMD ["node", "app.js"]