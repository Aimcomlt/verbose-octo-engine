# The first instruction is what image we want to base our container on
# We Use an official Node version 10 image as a parent image
FROM node:10

# Create app directory for Real World React example app
# NOTE: all the directives that follow in the Dockerfile will be executed in
# that directory.
WORKDIR /src/app

# Copy the package.json file into our app directory
COPY . /src/app/
COPY . /src/public/

# Install any needed packages specified in package.json
RUN npm install

RUN ls /src/app
RUN ls /src/public


EXPOSE 3000

CMD npm start