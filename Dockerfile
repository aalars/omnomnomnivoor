FROM python:3.11-slim-bullseye

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN apt-get update && apt-get -y install --no-install-recommends \
    build-essential libpq-dev python3-dev postgresql-client

RUN pip install -U pip setuptools wheel poetry

RUN poetry config virtualenvs.create false

COPY wait-for-it.sh /usr/bin/

COPY pyproject.toml /
COPY poetry.lock /

RUN poetry install -n --no-ansi

COPY . .

CMD bash
