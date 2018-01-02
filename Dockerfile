FROM mariadb:10.3.3
MAINTAINER 4 All Digital  "joe@4alldigital.com"

COPY ./config/custom.cnf /etc/mysql/conf.d/custom.cnf

# bootstrap root user
RUN echo "mysqld & " \
    "mysqladmin --silent --wait=30 ping || exit 1;" \
    "mysql -e 'GRANT ALL PRIVILEGES ON *.* TO \"root\"@\"%\" WITH GRANT OPTION;'" \
    | bash -e

EXPOSE 3306
CMD ["mysqld"]
