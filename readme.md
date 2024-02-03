# eShop

## Purpose

Setup MERN Stack using Docker Containers instead

## Tech Stack

1. FrontEnd - React
2. BackEnd - Node/Express
3. DB - MongoRB
4. Containerization - Docker

### How to execute using Docker Containers

1. Set up network: <br />

- Go to root folder <br />
  docker network rm webapp_network <br />

2. Setup frontend: <br />

- Go to frontend folder and type <br />
  docker build -t clientapp . <br />

3. Run frontend App: <br />
   docker run -d -p 3000:3000 --name clientapp --network webapp_network clientapp <br />

4. Setup backend: <br />

- Go to root folder and type <br />
  docker build -t serverapp . <br />

5. Run backend app on docker <br />
   docker run -d -p 5000:5000 --name serverapp --network webapp_network serverapp <br />

## How to run using DockerCompose

1. Go to root directory and run: <br />
   docker-compose up -d <br />

### Notes

1. Ensure that line in package.json of frontend react app has this: <br />
   "proxy": "http://serverapp:5000" <br />

2. Dont forget to add .env file with the following <br />
   NODE_ENV=development <br />
   PORT=5000 <br />
   MONGO_URI= <br />
   JWT_SECRET=abc123 <br />
   PAYPAL_CLIENT_ID= <br />
   PAYPAL_APP_SECRET= <br />
   PAYPAL_API_URL=https://api-m.sandbox.paypal.com <br />
