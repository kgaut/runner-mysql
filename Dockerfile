FROM mysql:5.7

RUN apt-get update
RUN apt-get install -y git vim

RUN cd /usr/local \
    && git clone https://github.com/kgaut/docker-scripts.git --branch master \
    && cd /usr/local/docker-scripts \
    && ln -s /usr/local/docker-scripts/mysql-backup.sh /usr/bin/mysql-backup  \
    && ln -s /usr/local/docker-scripts/mysql-import.sh /usr/bin/mysql-import
