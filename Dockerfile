# Use the official Node.js 14 image as base
FROM node:21-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Copy .env file to the working directory
COPY .env ./

# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD ["node", "server.js"]