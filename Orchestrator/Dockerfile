FROM alpine:3.6

RUN apk --update add openjdk8

#Copy shell script to run service
COPY setup.sh /setup.sh

#Copy jar file to run service
COPY ./target/Orchestrator-1.0.0-jar-with-dependencies.jar /Orchestrator.jar
COPY ./testNgXmlFiles /testNgXmlFiles

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# copy crontabs for root user
COPY ./cronjob /etc/crontabs/root

# start crond with log level 8 in foreground, output to stderr
CMD ["crond", "-f", "-d", "8"]
