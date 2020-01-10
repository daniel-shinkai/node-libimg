FROM ambientum/node:lts
USER root

COPY . /var/www/app

ARG API_URL=http://localhost:8080
ARG APP_URL=localhost:3000
ARG G_MAPS_API

ENV HOST=0.0.0.0
ENV API_URL=${API_URL}
ENV APP_URL=${APP_URL}
ENV G_MAPS_API=${G_MAPS_API}

RUN npm install && npm run build

CMD ["npm", "start"]
