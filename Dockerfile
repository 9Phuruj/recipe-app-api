from python:3.8-alpine
MAINTAINER Vin Point System Ltd

RUN pwd
WORKDIR /app
ENV PYTHONUNBUFFERED 1
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY ./app /app

RUN adduser -D user
USER user
