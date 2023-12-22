FROM node:alpine AS react
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build


FROM nginx:1.25.3-alpine3.18

COPY  --from=react /app/build /usr/share/nginx/html

