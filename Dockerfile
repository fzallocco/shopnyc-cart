FROM node:17-alpine

#set working directory
WORKDIR /app

#add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install
RUN npm install react-scripts@5.0.1

# add app
COPY . ./

#start app
CMD ["npm", "start"]