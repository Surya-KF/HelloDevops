# Use official Node.js image as the base
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (for efficient caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app’s code
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to start your app
CMD ["node", "app.js"]