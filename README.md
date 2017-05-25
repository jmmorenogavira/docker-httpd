# docker-httpd

The `docker-httpd` image provides a Docker container running Apache HTTP Server 2.4 
based on [httpd](https://hub.docker.com/_/httpd/) official image.

## Usage

Start a HTTP Server instance as follows:

    docker run -d --name my-apache-app -v ./public-html/:/usr/local/apache2/htdocs/ jmmoreno/docker-httpd:2.4

Once you have started the container, you can then connect to the
container as follows:

    docker exec -it my-apache-app /bin/bash

## Custom configuration file

If you want to use your own configuration file, you need to mount it into a volume:

	docker run ....... -v /opt/httpd/conf.d:/usr/local/apache2/conf.d \
		-v /opt/httpd/conf:/usr/local/apache2/conf .....
		
NOTE: Based on your configuration files, you will need to expose some ports to be able
to access to your web applications.

		