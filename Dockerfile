FROM  python:stretch

COPY . /APP
WORKDIR /APP

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:8080", "main:APP"]
