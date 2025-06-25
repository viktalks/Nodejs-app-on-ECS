# Use a lightweight Node.js image
FROM node:18-alpine

# Set workdir
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

# Expose port
EXPOSE 3000

# Run the app
CMD ["node", "app.js"]

