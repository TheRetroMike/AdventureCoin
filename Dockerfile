FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install wget build-essential -y
WORKDIR /opt/
RUN wget https://github.com/AdventureCoin-ADVC/AdventureCoin/releases/download/5.0.0.2/AdventureCoin-Linux-release.tar.gz
RUN tar zxvf AdventureCoin-Linux-release.tar.gz
RUN mv src/adventurecoind /usr/bin/
RUN mv src/adventurecoin-cli /usr/bin/
RUN rm -R src
RUN rm AdventureCoin-Linux-release.tar.gz
CMD /usr/bin/adventurecoind -printtoconsole
