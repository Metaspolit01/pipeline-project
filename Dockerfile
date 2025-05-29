FROM python:3.10-slim

RUN pip install --no-cache-dir \
    pipenv \
    flask \
    requests \
    botocore \
    boto3

WORKDIR /app

COPY . .

EXPOSE 5000

CMD [ "python3", "app.py" ]

