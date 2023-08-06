FROM ubuntu:20.04
RUN apt-get update
RUN apt update
# basic commands
RUN apt-get install -y vim
RUN apt-get install tree
RUN apt install -y git
RUN apt install -y pip
RUN apt install -y wget

# 添加用户
RUN useradd -m Allen
RUN echo 'Allen:123456' | chpasswd
RUN usermod -aG sudo Allen
RUN apt-get install -y sudo

# 切换到新创建的用户
USER Allen
WORKDIR /home/Allen

# open bash
CMD sh