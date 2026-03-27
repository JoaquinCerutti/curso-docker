#!/bin/bash

# Elimina todas las imágenes de Docker que no estén siendo utilizadas por contenedores activos.
docker image prune -a

# Elimina todos los contenedores de Docker que no estén en ejecución. (status: exited)
docker container prune

# Elimina volúmenes de Docker que no estén siendo utilizados por contenedores activos.
docker volume prune

# Elimina todos los recursos de Docker que no estén siendo utilizados (contenedores, cache, volumenes, redes, etc.)
docker system prune

# Elimina capas de construcción no usadas, datos de build, cache...
docker builder prune

# Redes...
Docker network prune