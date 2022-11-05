FROM python:3.7-slim-stretch

ENV PYTHONUNBUFFERED=1

WORKDIR /usr/src

COPY ./src/ .
