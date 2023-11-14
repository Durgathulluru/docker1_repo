# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container to /usr/src/app
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Bundle the application source inside the Docker image
COPY . .

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run app.js when the container launches
CMD [ "node", "app.js" ]

