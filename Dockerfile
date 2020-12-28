FROM ubuntu:18.04
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository multiverse && \
    dpkg --add-architecture i386
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y libstdc++6:i386 libgcc1:i386 libcurl4-gnutls-dev:i386 wget
RUN mkdir -p /root/steamcmd/ && \
    mkdir -p /root/.klei/DoNotStarveTogether/
WORKDIR /root/steamcmd/
RUN	wget "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" && \
    tar -xvzf steamcmd_linux.tar.gz
RUN wget https://accounts.klei.com/assets/gamesetup/linux/run_dedicated_servers.sh -P /root/ && \
    chmod u+x /root/run_dedicated_servers.sh
EXPOSE 10999
ENTRYPOINT /root/run_dedicated_servers.sh