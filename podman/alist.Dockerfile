FROM ubuntu:20.04

USER root
WORKDIR /etc/adrive
RUN sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list && \
    apt update && apt install wget -y && \
    wget --no-check-certificate https://download.fastgit.org/Xhofe/alist-web/releases/download/v0.1.1/refs.tags.v0.1.1.tar.gz && \
    wget --no-check-certificate https://download.fastgit.org/Xhofe/alist/releases/download/v0.1.0/alist_0.1.0_linux_amd64.tar.gz && \
    tar -zxf refs.tags.v0.1.1.tar.gz && \
    tar -zxf alist_0.1.0_linux_amd64.tar.gz && \
    #wget --no-check-certificate https://cfp.vim-cn.com/cbz4q -O /etc/adrive/conf.yml && \
    rm -rf refs.tags.v0.1.1.tar.gz && \
    rm -rf alist_0.1.0_linux_amd64.tar.gz && \
    rm -rf /var/lib/apt/list/*

CMD ["/etc/adrive/alist"]
