FROM python:3.8.7
LABEL maintainer="Michael Joyce"
COPY .vimrc .bashrc /root/
RUN apt update && \
    apt install -y vim-nox && \
    apt install -y git && \
    apt install -y software-properties-common && \
    apt clean
RUN git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
CMD ["/bin/bash"]
