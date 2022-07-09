# dbgp-proxy-docker

DBGp Proxy Tool (via komodo-python-dbgp) running in a container on debian:stretch-slim and python 2.

Use: can be run via docker cli commands or docker-compose.yml file (included).

Example:

```shell
# Clone the repository
git clone git@github.com:ahathaway/dbgp-proxy-docker.git

# go into the cloned folder
cd dbgp-proxy-docker

# Either use docker-compose to start the service
docker-compose up -d

# ...or, you can build 
docker build -t dbgp-proxy-docker .
# ...and run the container 
docker run -p 9000:9000 -p 9001:9001 dbgp-proxy-docker

```
