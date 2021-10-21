FROM node:12-alpine
WORKDIR /app
COPY package.json yarn.lock /app
RUN yarn install --production
COPY . /app
CMD ["node", "src/index.js"]
EXPOSE 3000