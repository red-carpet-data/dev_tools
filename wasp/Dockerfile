
ARG node_version=18.12.0
FROM node:${node_version}

# set working directory
#WORKDIR /app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH:~/.local/bin
RUN curl -sSL https://get.wasp-lang.dev/installer.sh | sh

# will be running this using a local mount
# so creating this app after image is created
# see bootstrap.sh

# RUN npx create-react-app ${app_name}
# WATCHPACK_POLLING tells npm to poll local files for changes 
# which is useful for dev
ENV WATCHPACK_POLLING true 
EXPOSE 3000/tcp
RUN mkdir /wasp
# might be useful but we do not start because we haven't
# generated the app yet
# CMD ["npm", "start"] 
CMD tail -f /dev/null


