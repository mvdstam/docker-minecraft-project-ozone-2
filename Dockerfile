FROM openjdk:8-jre-alpine

ENV SERVER_ZIP=https://addons-origin.cursecdn.com/files/2440/937/Project_Ozone_2-Server-v.2.3.0.zip

RUN apk --no-cache add wget openssl unzip
RUN addgroup -g 1234 minecraft
RUN adduser -D -h /data -u 1234 -G minecraft -g "minecraft user" minecraft

RUN mkdir /tmp/minecraft && cd /tmp/minecraft && \
	wget --quiet -c ${SERVER_ZIP} -O ProjectOzone2.zip && \
	unzip -q ProjectOzone2.zip && \
	rm ProjectOzone2.zip && \
	chown -R minecraft /tmp/minecraft

USER minecraft

EXPOSE 25565

ADD start.sh /start

VOLUME /data
ADD server.properties /tmp/server.properties
WORKDIR /data

CMD /start

ENV MOTD A Minecraft (Project Ozone 2) Server Powered by Docker
ENV LEVEL world
ENV JVM_OPTS -Xms2048m -Xmx2048m
