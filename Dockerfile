FROM node:latest

# RUN apt update -y && apt-get update -y
WORKDIR app/

COPY . .

RUN npm install

EXPOSE 8080

ENTRYPOINT [ "npm" ]
CMD ["start", "bootstrap.js"]
