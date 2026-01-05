FROM quay.io/wildfly/wildfly:34.0.1.Final-jdk17

ARG APP_ARTIFACT=target/app.war

# Labels are injected at image build time by the CI workflow; none defined here.
ADD ${APP_ARTIFACT} $JBOSS_HOME/standalone/deployments/app.war
