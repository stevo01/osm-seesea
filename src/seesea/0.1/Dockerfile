FROM debian:11

LABEL maintainer="Steffen Volkmann (steffen@volkmann.com)"

ENV DEBIAN_FRONTEND=noninteractive

RUN    apt-get update \
    && apt-get install -y apt-utils 2>&1 | grep -v "debconf: delaying package configuration, since apt-utils is not installed" \
    && apt-get install -y --no-install-recommends \
    procps \
    nano \
    wget \
    unzip \
    git \
    software-properties-common \
    subversion
    
RUN apt-add-repository 'deb http://security.debian.org/debian-security stretch/updates main' \
&& apt-get update \
&& apt-get install -y --no-install-recommends \
   openjdk-8-jdk\
   maven 


# checkout seesea sources
# svn checkout https://svn.code.sf.net/p/seesea/code/trunk seesea-code


# Start running
USER root
COPY run.sh /
ENTRYPOINT ["/run.sh"]
CMD []
EXPOSE 8080
