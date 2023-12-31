FROM node:14-alpine

WORKDIR /app

COPY package.json package-lock.json /app/
RUN npm install

EXPOSE 4000

COPY . /app/
CMD [ "npm", "start" ]
