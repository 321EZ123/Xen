FROM node:iron-bookworm-slim
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "./"]

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "index.mjs" ]
