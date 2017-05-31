FROM python:3.6.1-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY hellojson.py ./

CMD ["/usr/local/bin/gunicorn", "-b", ":80", "hellojson:app"]

