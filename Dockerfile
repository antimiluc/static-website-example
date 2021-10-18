FROM apache
LABEL maintainer='ANTIMI LUC'

ADD ./webapprout /var/www/html/
#EXPOSE 80

CMD gunicorn --bind 0.0.0.0:$PORT wsgi 

