# Usa imagen oficial de Node.js
FROM node:18-alpine

# Define carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copia package.json y package-lock.json para instalar dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia todo el código fuente
COPY . .

# Expone el puerto 3000
EXPOSE 3000

# Comando para iniciar la app
CMD ["node", "app.js"]
