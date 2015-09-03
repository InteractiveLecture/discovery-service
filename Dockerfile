FROM java:8
RUN mkdir /lecture
WORKDIR /lecture
COPY build/distributions/discovery-service.tar discovery-service.tar
RUN tar -xf discovery-service.tar
EXPOSE 8761
ENTRYPOINT discovery-service/bin/discovery-service
