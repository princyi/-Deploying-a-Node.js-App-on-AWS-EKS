3.Defines how to containerize the Node.js app.

# Use Node.js official image
FROM node:16

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json (if any) and install dependencies
COPY package*.json ./
RUN npm install

# Copy the app code
COPY . .

# Expose the app port
EXPOSE 3000

# Run the application
CMD ["node", "app.js"]

