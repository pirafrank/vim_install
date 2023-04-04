FROM ubuntu:focal-20230308

ENV DEBIAN_FRONTEND=noninteractive

# explicitly set lang and workdir
ENV LANG="en_US.UTF-8" LC_ALL="C" LANGUAGE="en_US.UTF-8"

USER root

RUN apt-get update \
  && apt-get install -y sudo git

RUN apt-get install -y \
  build-essential libncurses-dev python3-dev ruby-dev \
  libperl-dev lua5.2 liblua5.2-0 liblua5.2-dev

RUN apt-get remove -y vim-runtime gvim vim-tiny \
    vim-common vim-gui-common \
  && apt-get autoremove -y

WORKDIR /vim/compile

COPY ./*.sh ./

# add user and change default shell
ARG USER_UID=1000
RUN echo 'add user and change default shell' \
  && useradd -Um -d /home/work -G sudo -s /bin/bash --uid $USER_UID work \
  && echo work ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/work \
  && echo "root:root" | chpasswd \
  && echo "work:work" | chpasswd

RUN chown work:work /vim/compile

USER work
ARG TARGET_DIR='/vim/compile'
RUN bash prepare.sh
RUN cd ${TARGET_DIR}/vim \
  && bash ../compile.sh

USER root
RUN cd ${TARGET_DIR}/vim \
  && make install

USER work
WORKDIR /home/work

# set default terminal
ENV TERM=xterm-256color

CMD ["sh", "-c", "bash" ]
