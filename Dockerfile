# Base image
FROM node:14-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm ci --quiet

# Copy the rest of the application files
COPY . .

# Build the React app
RUN npm run build

# Set the command to run the built React app
CMD ["npm", "start"]
