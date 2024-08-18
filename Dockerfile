FROM alpine:${ALPINE_VERSION}

ARG JRE_VERSION
LABEL repo="https://github.com/vsapan/java-docker.git"
# Add openjdk-jre headless
RUN apk add --no-cache --update openjdk${JRE_VERSION}

CMD [ "java",  "-version" ]
