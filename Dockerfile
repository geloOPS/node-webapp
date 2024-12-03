FROM node:lts-slim

EXPOSE 3000

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

COPY . .

CMD ["npm", "start"]

