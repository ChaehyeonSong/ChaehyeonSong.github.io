FROM ubuntu:20.04

LABEL email="colin13053@gmail.com"
LABEL name="ChaehyeonSong"
LABEL description="my blog image"

RUN apt-get update && apt-get install -y \
    make \
    build-essential \
    ruby \
    ruby-dev \
    git \
    vim
ENV GEM_HOME=$HOME/gems
ENV PATH=$HOME/gems/bin:$PATH
RUN gem install jekyll bundler
RUN git config --global user.name "ChaehyeonSong" && \
git config --global user.email "colin13053@gmail.com" && \
git config --global --add safe.directory /blog