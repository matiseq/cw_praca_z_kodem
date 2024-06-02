# Użyj oficjalnego obrazu Python jako bazowy
FROM python:3.9

# Ustaw katalog roboczy
WORKDIR /app

# Skopiuj plik requirements.txt do katalogu roboczego
COPY requirements.txt .

# Zainstaluj zależności
RUN pip install --no-cache-dir -r requirements.txt

# Skopiuj resztę plików aplikacji do katalogu roboczego
COPY . .

# Ustaw zmienną środowiskową dla Flask
ENV FLASK_APP=app.py

# Uruchom aplikację Flask
CMD ["flask", "run", "--host=0.0.0.0"]
