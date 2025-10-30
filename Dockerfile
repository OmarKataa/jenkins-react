FROM node:alpine AS react
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build


FROM nginx:1.29.3-alpine3.22

COPY  --from=react /app/build /usr/share/nginx/html

