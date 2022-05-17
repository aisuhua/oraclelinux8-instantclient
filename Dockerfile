FROM ghcr.io/oracle/oraclelinux8-instantclient:21

ENV http_proxy http://192.168.88.66:1082
ENV https_proxy http://192.168.88.66:1082

RUN yum install -y lftp mysql \
    && yum clean all

RUN chmod 775 /opt
RUN chown 0:0 /opt

USER 1000

#ENTRYPOINT ["tail", "-f", "/dev/null"]
