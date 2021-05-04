FROM node:latest

RUN apt update -y

COPY WeightTrackerTst/ APP/

WORKDIR App/

# RUN npm install

CMD ["node", "bootstrap.js"]