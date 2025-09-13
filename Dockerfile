FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["sh", "-c", "python manage.py migrate --noinput && (python manage.py import_sanisettes || echo ' Import sanisettes échoué, lancement quand même') && gunicorn sanisettes_project.wsgi:application --bind 0.0.0.0:8000"]

