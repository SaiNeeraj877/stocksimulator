# Use a Node.js version 13 base image
FROM node:13

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install -force
RUN node node_modules/node-sass/scripts/install.js
RUN npm rebuild node-sass

# Copy the rest of the application code to the working directory
COPY . .

# Start the Node.js server with Firebase credentials
CMD ["npm", "start"]
























