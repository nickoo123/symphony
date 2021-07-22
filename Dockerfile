FROM maven:3-jdk-8-alpine as MVN_BUILD

WORKDIR /opt/blog/
ADD . /tmp
RUN cd /tmp && mvn package -DskipTests -Pci -q && mv target/symphony/* /opt/blog/ \
&& cp -f /tmp/src/main/resources/docker/* /opt/blog/

FROM openjdk:8-alpine
LABEL maintainer="nickoo<1410432625@qq.com>"

WORKDIR /opt/blog/
COPY --from=MVN_BUILD /opt/blog/ /opt/blog/
RUN apk add --no-cache ca-certificates tzdata ttf-dejavu

ENV TZ=Asia/Shanghai
EXPOSE 8080

ENTRYPOINT [ "java", "-cp", "lib/*:.", "org.b3log.symphony.Server" ]
