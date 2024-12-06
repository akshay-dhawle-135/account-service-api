# Use the official Node.js image as a base
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy all the files to the container
COPY . .

# Expose the port your app runs on (default Express port is 3000)
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
