FROM node:18-alpine3.15
WORKDIR /usr/src/app
ENV TZ=Asia/Seoul

COPY . .
RUN npm install && npm run build && cp ormconfig.js dist/ormconfig.js && rm -rf src
# RUN npm run build && rm -rf src

EXPOSE 8080
CMD ["yarn", "js-start"]