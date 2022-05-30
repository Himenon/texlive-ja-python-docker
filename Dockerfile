FROM ghcr.io/himenon/texlive-ja

RUN apt install -y build-essential libbz2-dev libdb-dev \
    libreadline-dev libffi-dev libgdbm-dev liblzma-dev \
    libncursesw5-dev libsqlite3-dev libssl-dev \
    zlib1g-dev uuid-dev

RUN wget https://www.python.org/ftp/python/3.10.4/Python-3.10.4.tgz
RUN tar -zxvf Python-3.10.4.tgz
RUN cd Python-3.10.4 && \
    ./configure && \
    make && \
    make install

RUN pip3 install Pygments
