FROM python:2.7

COPY requirements.txt .

RUN apt-get update
RUN apt-get install libatlas-base-dev python-dev python-pip gfortran build-essential -y
RUN pip install --no-cache-dir -r requirements.txt
