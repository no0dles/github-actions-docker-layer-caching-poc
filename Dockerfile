FROM node:12
Workdir /build
RUN npm i sqlite3@5.0.0

#######
FROM node:12
COPY --from=0 /build/node_modules node_modules
