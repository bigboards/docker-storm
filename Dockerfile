FROM bigboards/java-7-__arch__

MAINTAINER bigboards (hello@bigboards.io)

RUN \
  cd / && \
  wget http://apache.cu.be/storm/apache-storm-0.9.4/apache-storm-0.9.4.tar.gz && \
  tar xzf apache-storm-0.9.4.tar.gz && \
  rm -f apache-storm-0.9.4.tar.gz && \
  mv /apache-storm-0.9.4 /storm

# Define default command.
CMD ["/bin/bash"]

# Expose ports.
#  - 3772: DRPC port
#  - 3773: DRPC Invocations port
#  - 6627: Nimbus Thrift Port
#  - 6700, 6701, 6702, 6703: Defines the amount of workers that can be run on this machine. Each worker is assigned a port to use for communication
#  - 8000: LogViewer
#  - 8080: Web UI
EXPOSE 3772 3773 6627 6700 6701 6702 6703 8000 8080
