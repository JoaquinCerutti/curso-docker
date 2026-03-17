FROM nginx:latest

# Path: /usr/share/nginx/html/index.html
# Copiar el archivo index.html al directorio 
# de nginx que carga el html como sitio web

COPY ./sitio/index.html /usr/share/nginx/html/index.html

# docker run -it --rm -d -p 8080:80 --name web sitio-web

# -p PUERTO_HOST:PUERTO_CONTENEDOR
# Navegador -> http://localhost:8080 -> (Docker redirige) -> contenedor -> Nginx puerto 80
