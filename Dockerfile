FROM node:17-alpine

RUN npm install -g nodemon

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 5000

CMD ["npm", "run", "dev"]



# Proxy error: Could not proxy request /api/products/top from localhost:3000 to http://127.0.0.0:5000/.

# See https://nodejs.org/api/errors.html#errors_common_system_errors for more information (ENETUNREACH).


# Proxy error: Could not proxy request /api/products? from localhost:3000 to http://127.0.0.0:5000/.

# See https://nodejs.org/api/errors.html#errors_common_system_errors for more information (ENETUNREACH).





# Request URL:
# http://localhost:3000/api/products?
# Request Method:
# GET
# Status Code:
# 304 Not Modified
# Remote Address:
# 127.0.0.1:3000
# Referrer Policy:
# strict-origin-when-cross-origin



# Request URL:
# http://localhost:3000/api/products/top
# Request Method:
# GET
# Status Code:
# 304 Not Modified
# Remote Address:
# 127.0.0.1:3000
# Referrer Policy:
# strict-origin-when-cross-origin