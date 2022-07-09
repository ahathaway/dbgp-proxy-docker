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

Once running, you can direct your php server to send xdebug information to this proxy by setting the following
directives in your php.ini or ini include file:

xdebug version 3.x:

* `xdebug.client_port = 9000`
* `xdebug.client_host = <ip address or hostname>`
* `xdebug.trigger_value = PHPSTORM`

xdebug version 2.x:

* `xdebug.remote_port = 9000`
* `xdebug.remote_host = <ip address or hostname>`
* `xdebug.idekey = PHPSTORM`

Finally, in your IDE (in this case using a JetBrains IDE as an example), you register with the dbgp-proxy container on
port `9001` and the IP or hostname of the server running the container, with the `PHPSTORM` string for the `IDE key`
value.

You can view the [JetBrains instructions](https://www.jetbrains.com/help/idea/2022.1/xdebug-proxy.html) for more
information on setting up the debug proxy configuration.
