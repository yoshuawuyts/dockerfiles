FROM debian:8.6

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY index.sh /usr/src/app/

CMD ["sh", "./index.sh"]
