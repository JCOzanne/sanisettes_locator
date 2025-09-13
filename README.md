# Sanisettes Locator 🚻

A Django web application that displays public toilets ("sanisettes") in Paris on an interactive map.  
The project fetches data from the [Paris Open Data API](https://opendata.paris.fr/).

---

## Features
- Django 5 + Python 3.12
- Interactive map with Leaflet.js
- Nearby sanisettes API endpoint
- Tested with GitHub Actions (CI/CD)

---

##  Installation (Local)

Clone the repository and install dependencies:

```bash
git clone https://github.com/<your-username>/sanisettes_project.git
cd sanisettes_project
python -m venv venv
source venv/bin/activate  # on Linux/macOS
venv\Scripts\activate     # on Windows
pip install -r requirements.txt
```
Run migrations and start the server

```bash
python manage.py migrate
python manage.py runserver
```
The app will be available at:
 http://localhost:8000

Running tests

```bash
pytest
```

Docker (optional)

```bash
docker build -t sanisettes_app .
docker run -p 8000:8000 sanisettes_app
```
---

## Limitations

This project was developed as a **personal exercise**.  
The goal is to practice working with public APIs and deployment, not to deliver a production-ready service.

- Only a subset of data may be imported due to deployment constraints (Render free plan).  
- No authentication or advanced features implemented. 