FROM nginx:latest

RUN apt-get update && apt-get -y upgrade

RUN groupadd -r joaquin && useradd -r -g joaquin joaquin
RUN chown -R joaquin:joaquin /usr/share/nginx/html
USER joaquin

# Debería fallar
# RUN apt-get update && apt-get -y upgrade

# Debería poderse

CMD [ "bash", "-c", "echo Hello Docker!" ]
