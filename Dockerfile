# We will use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy app files
COPY app/ .

# Install dependencies 
RUN npm install

# Expose port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
