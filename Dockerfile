FROM python:3.7.3-slim-stretch

COPY . .

RUN pip install -r requirements.txt

CMD ["gunicorn", "-b", "0.0.0.0:80", "viewer:app"]
