FROM node:latest
MAINTAINER Devananda van der Veen

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y supervisor nodejs nodejs-legacy npm && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN cd /opt && \
    git clone https://github.com/openstack/ironic-webclient.git ironic-webclient && \
    cd ironic-webclient && \
    git checkout c938dc981 && \
    npm install && \
    node_modules/bower/bin/bower --allow-root install

ADD supervisor.conf /etc/supervisor/supervisor.conf

EXPOSE 8000
CMD ["supervisord", "-c", "/etc/supervisor/supervisor.conf", "-n"]
