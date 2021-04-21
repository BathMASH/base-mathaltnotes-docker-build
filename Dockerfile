FROM bathmash/texlive-docker-build

RUN apt-get update --fix-missing && apt-get install -y wget bzip2 flex \
    make \
    inkscape \
    default-jdk \
    poppler-utils \
    ruby \
    vim \
    pdf2svg \
    mlocate \
    tidy \
    && \
    wget https://github.com/jgm/pandoc/releases/download/2.11.3.2/pandoc-2.11.3.2-1-amd64.deb && \
    apt install ./pandoc-2.11.3.2-1-amd64.deb && \
    rm -rf ./pandoc-2.11.3.2-1-amd64.deb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN updatedb