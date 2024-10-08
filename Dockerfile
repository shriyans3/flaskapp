FROM python:3.11.4

WORKDIR /app

COPY ./requirements.txt /app/

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENV PORT = 5000

ENV FLASK_APP=main.py

CMD ["flask", "run", "--host", "0.0.0.0"]
