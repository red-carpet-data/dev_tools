
ARG node_version=latest
FROM node:${node_version}

# set working directory
RUN mkdir /app
WORKDIR /app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
RUN npm install -g create-react-app
RUN npm install bulma

# will be running this using a local mount
# so creating this app after image is created
# see bootstrap.sh

# RUN npx create-react-app ${app_name}
# WATCHPACK_POLLING tells npm to poll local files for changes 
# which is useful for dev
ENV WATCHPACK_POLLING true 
EXPOSE 3000/tcp

# might be useful but we do not start because we haven't
# generated the app yet
# CMD ["npm", "start"] 
CMD tail -f /dev/null


