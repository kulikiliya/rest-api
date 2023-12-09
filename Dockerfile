# Start your image with a node base image

FROM node:20-alpine

# The /app directory should act as the main application directory
WORKDIR /nodejs-homework-template

# Copy the app package and package-lock.json file
COPY package*.json ./

# # Copy local directories to the current local directory of our docker image (/app)
# COPY ./src ./src
# COPY ./public ./public
# Скопіюйте решту додатку
COPY . .

# Install node packages, install serve, build the app, and remove dependencies at the end
RUN npm install 
    # && npm install -g serve \
    # && npm run build \
    # && rm -fr node_modules

EXPOSE 3000

# Start the app using serve command
CMD [ "npm", "start"]