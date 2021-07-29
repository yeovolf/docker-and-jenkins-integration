#specify a base image (peeled  oinion center)
From centos:7

#Description
LABEL maintainer="Soho yeo "

#update all packaged
RUN yum -y update && yum clean all
# Install apache
RUN yum -y install httpd


# copy index inside the container at the specify location  
COPY index.html /var/www/html

EXPOSE 80

#start httpd when starts (systemctl start httpd)
ENTRYPOINT [ "/usr/sbin/httpd" ]
# Run this command when container starts
CMD [ "-D","FOREGROUND" ]


