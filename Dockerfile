FROM java:7
MAINTAINER Maarten Balliauw <maarten.balliauw@jetbrains.com>

RUN wget http://download-cf.jetbrains.com/charisma/youtrack-6.5.16807.jar -O youtrack.jar

EXPOSE 80
CMD ["java", "-Djava.security.egd=/dev/zrandom", "-Xmx1g", "-XX:MaxPermSize=250m", "-Djava.awt.headless=true", "-jar", "youtrack.jar", "80"]
