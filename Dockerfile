FROM node:23-alpine

WORKDIR /app
RUN cd /app

COPY package.json .
RUN npm install
COPY . .
EXPOSE 3333
CMD ["node", "app.js", "npm start"]
