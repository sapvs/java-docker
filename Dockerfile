ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION}

ARG ALPINE_VERSION
ARG JRE_VERSION

# Labels
LABEL repo="https://github.com/s3vt/java-docker.git"

# Add openjdk-jre headless
RUN apk add --no-cache --update openjdk${JRE_VERSION}

CMD [ "java",  "-version" ]
