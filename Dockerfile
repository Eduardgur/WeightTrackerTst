FROM node:latest

RUN apt update -y && apt-get update -y

COPY . APP/

WORKDIR App/

EXPOSE 8080

CMD ["node", "bootstrap.js"]