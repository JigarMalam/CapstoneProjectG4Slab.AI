FROM node:20-slim

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

EXPOSE 7004

ENV PORT=7004

CMD [ "node", "index.js" ]
