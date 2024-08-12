# Usar la imagen oficial de Node.js como base
FROM node:18

# Crear y definir el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos de configuración (package.json y package-lock.json)
COPY package*.json ./

# Instalar las dependencias del proyecto
RUN npm install
RUN npm install multer

# Copiar el resto del código de la aplicación
COPY . .

# Exponer el puerto en el que la aplicación escuchará
EXPOSE 3000

# Ejecutar la aplicación
CMD ["npm", "start"]
