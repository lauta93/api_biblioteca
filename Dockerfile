# Definimos la imagen base (puedes usar una imagen diferente según tus necesidades)
FROM node:14

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos de la API a la imagen
COPY package*.json ./
COPY . .

# Instalamos las dependencias de la API
RUN npm install

# Puerto en el que la API escuchará dentro del contenedor
EXPOSE 443

# Comando para iniciar la API
CMD ["npm", "start"]
