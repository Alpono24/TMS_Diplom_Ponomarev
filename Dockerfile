  FROM python:3.11-buster

  WORKDIR /code

  COPY . .

  COPY requirements.txt .

  RUN pip install -r requirements.txt

  CMD ["gunicorn", "apps.wsgi:application", "--bind", "0.0.0.0:8000"]



