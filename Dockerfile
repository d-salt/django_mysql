FROM python:3.6-slim
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN apt-get update
RUN apt-get install -y python-dev default-libmysqlclient-dev gcc
RUN pip install --upgrade pip setuptools
RUN pip install -r requirements.txt
ADD . /code/