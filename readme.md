# eShop

##Tech Stack

1. FrontEnd - React
2. BackEnd - Node
3. Containerization - Docker

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

###Notes

1. Ensure that line in package.json of frontend react app has this:
   "proxy": "http://serverapp:5000"
