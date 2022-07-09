FROM alpine:latest

RUN apk update
RUN apk add python3 py3-pip py3-flask
RUN mkdir /app

COPY ./app.py /app/app.py

CMD ["flask", "run", "--host0.0.0.0"]