FROM debian:10.3

RUN apt-get update && apt-get install --yes --no-install-recommends \
    texlive-fonts-recommended \
    texlive-generic-recommended \
    texlive-latex-extra \
    texlive-fonts-extra \
    dvipng \
    texlive-latex-recommended \
    texlive-base \
    texlive-pictures \
    texlive-lang-cyrillic \
    texlive-science \
    cm-super \
    texlive-generic-extra

COPY Resume /Resume
COPY entrypoint.sh /entrypoint.sh

CMD [ "bash" ]
ENTRYPOINT ["/entrypoint.sh"]
