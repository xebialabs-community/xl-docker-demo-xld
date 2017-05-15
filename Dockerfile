FROM openjdk:jre-alpine
MAINTAINER XebiaLabs "info@xebialabs.com"
RUN apk update && apk add supervisor wget
RUN wget -O /tmp/xl-deploy-trial-server.zip https://xebialabs.box.com/shared/static/y5vrvn2vmq99n1abqn3mxkfdbu6nkt3n.zip && \
    mkdir -p /opt/xld && unzip /tmp/xl-deploy-trial-server.zip -d /opt/xld && \
    mv /opt/xld/xl-deploy-7.0*-server /opt/xld/server && \
    rm -rf /tmp/xl-deploy-trial-server.zip
RUN wget -O /tmp/xl-deploy-trial-cli.zip https://xebialabs.box.com/shared/static/5cyu3cd5rw2c8msy8ydp6n0vr58575dn.zip && \
    mkdir -p /opt/xld && \
    unzip /tmp/xl-deploy-trial-cli.zip -d /opt/xld && \
    mv /opt/xld/xl-deploy-7.0*-cli /opt/xld/cli && \
    rm -rf /tmp/xl-deploy-trial-cli.zip
ADD resources/deployit.conf /opt/xld/server/conf/deployit.conf
RUN /opt/xld/server/bin/run.sh -setup -reinitialize -force
ADD resources/supervisord.conf /etc/supervisord.conf
RUN ln -fs /license/deployit-license.lic /opt/xld/server/conf/deployit-license.lic
CMD ["/usr/bin/supervisord"]
EXPOSE 4516
