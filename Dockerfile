FROM node:8.9-alpine
RUN mkdir /app
WORKDIR /app
ENV PORT=3000
COPY package.json ./
RUN npm install --production --silent
COPY /src /app/src
EXPOSE ${PORT}
CMD [ "npm", "start" ]