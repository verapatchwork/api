# Dockerfile

FROM node:lts-alpine

RUN mkdir /home/node/app/ && chown -R node:node /home/node/app
WORKDIR /home/node/app
USER node
COPY --chown=node:node verapatchwork ./
RUN yarn --network-timeout 30000
RUN yarn build --clean

CMD [ "yarn", "start" ]
