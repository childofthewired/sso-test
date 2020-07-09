FROM redhat-sso73-openshift:1.0

MAINTAINER childofthewired

USER root

# ADD mytheme.tar.gz $JBOSS_HOME/themes/
COPY themes/ $JBOSS_HOME/themes/

RUN chown -R jboss:root $JBOSS_HOME/themes/

RUN chmod -R 775 $JBOSS_HOME/themes/
