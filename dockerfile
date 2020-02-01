FROM node:lts

# create destination directory
RUN mkdir -p /usr/src/ws-oauth
WORKDIR /usr/src/ws-oauth

# copy the app, note .dockerignore
COPY . /usr/src/ws-oauth/
RUN npm install

# expose 4000 on container
EXPOSE 4000

# Environement variables
ENV NODE_ENV=production
ENV PORT=4000

# start the app
CMD [ "npm", "start" ]