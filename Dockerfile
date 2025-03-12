FROM node:iron-bookworm-slim
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "./"]

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "index.mjs" ]
