FROM java:8
ADD build/distributions/discovery-service.tar discovery-service.tar
RUN tar -xf discovery-service.tar
EXPOSE 8761
ENTRYPOINT /discovery-service/bin/discovery-service
