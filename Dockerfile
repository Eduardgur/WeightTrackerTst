FROM node:slim

WORKDIR app/

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

ENTRYPOINT [ "npm" ]
CMD ["run", "dev"]
