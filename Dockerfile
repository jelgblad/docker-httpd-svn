FROM httpd:2.4

RUN apt-get update

RUN apt-get install -y subversion apache2-utils subversion-tools libapache2-mod-svn

COPY ./apache-config/ /usr/local/apache2/conf/

RUN mkdir -p /svn \
    && chown www-data:www-data /svn

COPY ./auth-config/ /svn/auth/

# RUN su -l www-data -s /bin/bash

# RUN svnadmin create /svn/project1 && chown -R www-data:www-data /svn
