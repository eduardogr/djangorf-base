FROM python:3.7

ARG BUILD_ENV=dev

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
      python3-mysqldb \
      default-libmysqlclient-dev \
      python-dev

RUN mkdir -p /usr/api
COPY . /usr/api

RUN pip3 install --no-cache-dir -r /usr/api/requirements/${BUILD_ENV}.txt

EXPOSE 8000
WORKDIR /usr/api/drf-base

ENTRYPOINT ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
