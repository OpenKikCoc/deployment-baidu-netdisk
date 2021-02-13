FROM binacslee/novnc-base:baseimage-cn

RUN apt-get update && \
    apt-get install -y \
        wget && \
    \
    wget https://issuecdn.baidupcs.com/issue/netdisk/LinuxGuanjia/3.5.0/baidunetdisk_3.5.0_amd64.deb -O /tmp/baidunetdisk.deb && \
    apt-get --fix-broken install -y /tmp/baidunetdisk.deb && \
    \
    echo \
        "/opt/baidunetdisk/baidunetdisk --no-sandbox %U" \
        > /usr/sbin/baidunetdisk && \
    chmod +x /usr/sbin/baidunetdisk && \
    \
    rm -f /tmp/baidudnetdisk.deb

