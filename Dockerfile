# Use the official Node.js image as the base image
FROM strapi/strapi:3.6.8-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port Strapi will run on
EXPOSE 1337

# Start the Strapi server
CMD ["npm", "run", "develop"]