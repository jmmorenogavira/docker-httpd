FROM		httpd:2.4
MAINTAINER	Jose Manuel Moreno Gavira  <josem.moreno.gavira@gmail.com>

COPY files/conf/	/usr/local/apache2/conf/
COPY files/conf.d/	/usr/local/apache2/conf.d/

COPY files/extra-modules/* /usr/local/apache2/modules

# entrypoint is inherited from parent container
