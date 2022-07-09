FROM python:latest

WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY . /app/

CMD ["flask", "run", "--host0.0.0.0"]