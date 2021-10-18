FROM ubuntu
LABEL maintainer='ANTIMI LUC'
RUN apt-get update
RUN  apt-get install -y nginx
ADD webapprout /var/www/html/
#EXPOSE 80

CMD gunicorn --bind 0.0.0.0:$PORT wsgi 

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]