FROM mariadb:10.3.3
MAINTAINER 4 All Digital  "joe@4alldigital.com"

# forward request and error logs to docker log collector

# RUN chown -R mysql /dev/stdout \
#   && chown -R mysql /dev/stderr

RUN ln -sf /dev/stdout /var/log/mysql/mysql.log \
	&& ln -sf /dev/stderr /var/log/mysql/error.log

# RUN ln -s /dev/stderr ./errorlog.err

# RUN chown -R mysql /var/log/mysql/

COPY ./config/custom.cnf /etc/mysql/conf.d/custom.cnf

EXPOSE 3306
CMD ["mysqld"]
