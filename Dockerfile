FROM debian:11
RUN apt-get update && apt-get install -y \
    git vim \
    texlive-latex-recommended pandoc texlive-lang-german

RUN mkdir -p /dokumente/export
RUN mkdir -p /dokumente/import

ADD build-dokumente-in-container.sh /dokumente/build-dokumente-in-container.sh

WORKDIR /dokumente
CMD ["bash","./build-dokumente-in-container.sh"]

