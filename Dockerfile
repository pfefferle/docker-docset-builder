FROM python:3

RUN apt-get -qq update \
    && apt-get install httrack -y

RUN pip install beautifulsoup4 \
    && pip install html5lib

VOLUME ["/docset"]
WORKDIR /docset

ENTRYPOINT ["entry-point.sh"]
CMD [""]
