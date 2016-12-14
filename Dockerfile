FROM openjdk:jre-alpine
MAINTAINER XebiaLabs "info@xebialabs.com"
RUN apk update && apk add supervisor wget
RUN wget -O /tmp/xl-deploy-trial-server.zip https://dist.xebialabs.com/xl-deploy-trial-server.zip && mkdir -p /opt/xld && unzip /tmp/xl-deploy-trial-server.zip -d /opt/xld && mv /opt/xld/xl-deploy-6.0.2-server /opt/xld/server && rm -rf /tmp/xl-deploy-trial-server.zip
RUN wget -O /tmp/xl-deploy-trial-cli.zip https://dist.xebialabs.com/xl-deploy-trial-cli.zip && unzip /tmp/xl-deploy-trial-cli.zip -d /opt/xld && mv /opt/xld/xl-deploy-6.0.2-cli /opt/xld/cli && rm -rf /tmp/xl-deploy-trial-cli.zip
ADD resources/deployit.conf /opt/xld/server/conf/deployit.conf
RUN /opt/xld/server/bin/run.sh -setup -reinitialize -force
ADD resources/supervisord.conf /etc/supervisord.conf
RUN ln -fs /license/deployit-license.lic /opt/xld/server/conf/deployit-license.lic
CMD ["/usr/bin/supervisord"]
EXPOSE 4516
