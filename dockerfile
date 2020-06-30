FROM python:3.6.1-alpine

COPY requirements.txt /app
COPY app.py /app
COPY ./templates /app

WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["python"]

CMD ["app.py"]

EXPOSE 5000
