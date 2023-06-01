FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.tnwpwia.mongodb.net
ENV MONGODB_USERNAME hoon2
ENV MONGODB_PASSWORD IfVQBWzfHKHsiyxh

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]