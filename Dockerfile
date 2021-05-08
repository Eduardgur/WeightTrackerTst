FROM node:latest

RUN apt update -y && apt-get update -y

COPY . app/

WORKDIR app/

EXPOSE 8080

CMD ["node", "bootstrap.js"]
