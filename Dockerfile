FROM python:3.7

ARG BUILD_ENV=dev

RUN mkdir -p /usr/api
COPY . /usr/api

EXPOSE 8000
WORKDIR /usr/api

RUN pip3 install --no-cache-dir -r requirements/dev.txt

ENTRYPOINT ["python3", "tutorial/manage.py", "runserver", "0.0.0.0:8000"]
