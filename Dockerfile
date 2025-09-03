FROM node:20            
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PASSWORD=qwerty

WORKDIR /docker-testing

COPY package*.json ./
# * -> It copies any file which start with package

RUN npm install

COPY . .

CMD ["npm", "start"]

# This is for creating a image
# 1. Use the oficial Node.js image as the base image
# 2. Create and set working directory
        # -- WORKDIR just sets the current working directory inside the container.
        # It’s like saying:
        # “When this container runs, start inside /docker-testing.”
        # Docker will create /docker-testing inside the container if it doesn’t exist.
# 3. Copy package.json and package-lock.json
# 4. Install dependencies
# 5. Copy the rest of the application code
# 6. Define the command to run the application
