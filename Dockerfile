# Dockerfile

FROM node:lts-alpine

RUN mkdir /home/node/app/ && chown -R node:node /home/node/app
WORKDIR /home/node/app
USER node
COPY --chown=node:node verapatchwork ./
WORKDIR /home/node/app/verapatchwork
RUN yarn

CMD [ "yarn", "start" ]
