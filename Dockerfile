FROM node:12-buster-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

ENV GOOGLE_APPLICATION_CREDENTIALS=/root/.config/gcloud.json

CMD ["npm", "start"]
