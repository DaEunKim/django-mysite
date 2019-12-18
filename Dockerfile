FROM python:3.8.0
RUN mkdir /code
WORKDIR /code

ADD requirements.txt /code/
RUN pip install django-allauth && pip install django-cors-headers && pip install -r requirements.txt
ADD . /code/