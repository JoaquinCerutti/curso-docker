# Capa 1: Imagen base
FROM ubuntu:latest

# Capa 2: Update
RUN apt update \ 
    && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*

# Copia el contenido del directorio actual al contenedor
COPY . /app

# Echo para verificar que el contenedor se ejecuta correctamente
CMD ["echo", "Hello, World!"]

