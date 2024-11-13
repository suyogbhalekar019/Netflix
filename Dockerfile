FROM node:18.0.0-alpine

RUN mkdir -p /data
WORKDIR /data

COPY . .
ENV NODE_OPTIONS=--openssl-legacy-provider

ARG API_KEY   ff77c0c06c70c43d19961849a299c67c
ENV TMDB_KEY=${API_KEY}

RUN npm install

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
