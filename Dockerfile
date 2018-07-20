FROM ubuntu:17.10

RUN apt-get update && \
  apt-get install -y curl && \
  apt-get install -y build-essential python3.6-dev python3.6  && \
  curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
  python3.6 get-pip.py && \
  pip install python-telegram-bot --upgrade && \
  pip install pyopenssl && \
  pip install service_identity && \
  pip install autobahn[twisted]
