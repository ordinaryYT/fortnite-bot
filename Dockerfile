# Use official Node.js image from Docker Hub
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy all project files into the container
COPY . .

# Expose port
EXPOSE 3000

# Command to run your application
CMD ["npm", "start"]
