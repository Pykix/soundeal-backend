FROM python:3.9-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app/

COPY requirements.txt .
RUN pip install -r requirements.txt

RUN ln /usr/local/bin/python3.9 /usr/bin/python
RUN ln /usr/local/bin/python3.9 /usr/bin/python3
RUN ln /usr/local/bin/python3.9 /usr/bin/python3.9


COPY . .