FROM node:18-alpine as development
WORKDIR /app
COPY package.json yarn.lock /app/
RUN yarn --only=development
COPY . /app/
RUN yarn build
#RUN apt-get update
#RUN apt-get install -y nano

FROM node:18-alpine as production
ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}
WORKDIR /app
COPY package.json yarn.lock /app/
RUN yarn --only=production
COPY . /app/
COPY --from=development /app/dist ./dist
CMD ["node", "dist/main"]