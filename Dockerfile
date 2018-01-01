FROM mariadb:10.3.3
MAINTAINER 4 All Digital  "joe@4alldigital.com"

RUN touch /var/log/mysql/test.txt

EXPOSE 3306
CMD ["mysqld"]
