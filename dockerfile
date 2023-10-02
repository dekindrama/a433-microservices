# set base image 
FROM node:14

# set working directory
WORKDIR /app

# copy project into working directory
COPY . .

# setup env
ENV NODE_ENV=production DB_HOST=item-db

# install dependencies for production and build app
RUN npm install --production --unsafe-perm && npm run build

# expose port
EXPOSE 8080

# run project server
CMD [ "npm", "run", "start" ]
