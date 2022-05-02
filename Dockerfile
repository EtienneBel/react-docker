# FROM, says that we want to work with Minimal Node.js Docker Images built on Alpine Linux
FROM node:alpine

# WORKDIR here says that we want to add the source code of our application to the image. This line of instruction creates a directory called app in our image, and adds our source code to that directory.
WORKDIR /app

# In our application, we have installed some dependencies. COPY here copies the content of our packge.json file.
COPY package.json /

# RUN npm install goes ahead to install all the dependencies we might have installed locally, in our image.
RUN npm install

# What this does is it copies all the files in your local directory to the /app directory created in our image.
COPY . /app

# This final command starts up the application after every single step has been navigated successfully.
CMD ["npm", "start"]