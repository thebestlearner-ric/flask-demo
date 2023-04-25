FROM python:3.9-slim-buster

WORKDIR /demo

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "demo.py"]
