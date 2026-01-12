#FROM alpine:latest
FROM dhi.io/alpine-base:3.23-alpine3.23-dev

ARG JRE_VERSION
LABEL repo="https://github.com/sapvs/java-docker.git"
# Add openjdk-jre headless
RUN apk add --no-cache --update openjdk${JRE_VERSION}

CMD [ "java",  "-version" ]
