FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    unzip \
    wget \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

ENV PGWEB_VERSION 0.9.10
RUN wget https://github.com/sosedoff/pgweb/releases/download/v$PGWEB_VERSION/pgweb_linux_amd64.zip && \
    unzip pgweb_linux_amd64.zip -d /usr/bin && \
    mv /usr/bin/pgweb_linux_amd64 /usr/bin/pgweb && \
    rm -f pgweb_linux_amd64.zip

EXPOSE 8081
CMD ["/usr/bin/pgweb", "--bind=0.0.0.0", "--listen=8081"]
