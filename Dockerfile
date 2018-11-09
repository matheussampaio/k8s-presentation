FROM node:10.13.0-slim

# set our node environment, either development or production
# defaults to production, compose overrides this to development on build and run
ARG NODE_ENV=production
ENV NODE_ENV $NODE_ENV

# install dependencies first, in a different location for easier app bind mounting for local development
WORKDIR /opt
COPY package*.json ./
RUN npm install
ENV PATH /opt/node_modules/.bin:$PATH

WORKDIR /opt/app

# copy in our source code last, as it changes the most
COPY . ./

CMD [ "micro", "src/index.js" ]
