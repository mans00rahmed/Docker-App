FROM python:3.9

WORKDIR /code

COPY . /code/

# set env vars
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip


COPY requirements.txt /tmp/requirements.txt
RUN python3 -m pip install -r /tmp/requirements.txt

EXPOSE 8000



CMD python3 /code/manage.py runserver
