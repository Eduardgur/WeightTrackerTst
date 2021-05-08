FROM node:15-alpine

WORKDIR weighttracker/

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

ENTRYPOINT [ "node" ]
CMD ["bootstrap.js"]
