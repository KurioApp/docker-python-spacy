FROM python:3.6.6

RUN pip install -U pipenv \
  && export PATH=$(realpath ~)/.local/bin:$PATH \
  && pip install \
    Cython==0.28.4 \
    cymem==1.31.2 \
    preshed==1.0.1 \
    thinc==6.10.3 \
    murmurhash==0.28.0 \
    ujson==1.35 \
    regex==2017.4.5 \
  && pip install git+https://github.com/KurioApp/spaCy.git@84d3393e776b5d8b3aa22286ce0ee1025c200ff2#egg=spacy
