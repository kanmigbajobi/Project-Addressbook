FROM centos
RUN sudo yum -y install httpd
COPY index.html /var/www/html/
ENTRYPOINT [ "/usr/sbin/httpd" ]
CMD [ "-D", "FOREGROUND" ]
EXPOSE 80
