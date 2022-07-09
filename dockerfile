
FROM python:3.10.5-slim-bullseye
WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY . /app

CMD ["flask", "run", "--host0.0.0.0"]
