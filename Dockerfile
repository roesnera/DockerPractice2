# Declares a base image to use to build the image

FROM node:12

# specifies where to execute commands in the container filesystem

WORKDIR /app

# This specifies which files to copy into the container
# usage COPY [filepath to local files] [filepath to location in container]

COPY package.json /app

# Runs a command in the container

RUN npm install

# Copies the rest of our files into the container

COPY . /app

# Exposes a port in the container to our local computer
# This instruction is 100% optional but good for documentation purposes
# We still need to use the -p flag when we run the container

EXPOSE 80

# CMD specifies a command to run in the container once it is created
# The difference between this and the RUN command is that RUN executes when the image is created, and CMD is executed when the container is started
# This should always be last

CMD ["node", "server.js"]