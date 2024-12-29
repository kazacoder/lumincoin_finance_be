FROM node:23-alpine

WORKDIR /app
RUN cd /app

COPY package.json .
RUN npm install
RUN npm install -g migrate-mongo
COPY . .
EXPOSE 3000
CMD ["node", "app.js", "npm start"]
