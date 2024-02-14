[![push](https://github.com/sapvs/java-docker/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/sapvs/java-docker/actions/workflows/docker-publish.yml)

# Java Alpine Image - JRE Headless

Minimal java image with low footprint alpine linux base. 

Includes only JRE-Headless package to further reduce the size, as most docker containers use api model so normal JRE (With GUI support) is an overhead.


## Using this image

Pull the image from [dockerhub](https://hub.docker.com/r/vsaps/java/)

```
docker pull vsaps/java:17
```

Copy the required jars/java classes to the image and execute with java

e.g. Dockerfile

```
FROM vsaps/java:17

RUN mkdir /app
WORKDIR /app

COPY  target/my-jar.jar .
#EXPOSE 8080
ENTRYPOINT ["java", "-jar", "my-jar.jar" ]
```
