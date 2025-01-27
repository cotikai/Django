FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /project
WORKDIR /project
ADD requirements.txt /project/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ADD . /project/