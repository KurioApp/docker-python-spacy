FROM python:3.7-slim

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y git \
    curl \
    make \
    wget \
    python-pip \
    libpq-dev \
    python2.7

RUN pip install --upgrade pip

RUN pip install -U pipenv \
  && export PATH=$(realpath ~)/.local/bin:$PATH \
  && pip install \
    Cython==0.27.3 \
    cymem==1.31.2 \
    preshed==1.0.1 \
    thinc==6.10.3 \
    murmurhash==0.28.0 \
    ujson==1.35 \
    regex==2017.4.5 \
  && pip install git+https://github.com/KurioApp/spaCy.git@8aa806d4c6031d7b6929edb01f86be41b89aae10#egg=spacy

RUN apt-get remove --purge -y git \
    curl \
    make \
    wget \
    python-pip \
    libpq-dev \
    python2.7

RUN apt-get autoremove -y \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*