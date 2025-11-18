FROM node:20-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files (including .env)
COPY . .

# Expose the port your Express app runs on (change if needed)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
