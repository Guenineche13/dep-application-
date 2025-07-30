# Utiliser l'image officielle Python 3.10 slim comme base
FROM python:3.10-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt dans le conteneur
COPY requirements.txt .

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le code source dans le conteneur
COPY . .

# Exposer le port 80 pour l'application Flask
EXPOSE 80

# Commande pour lancer l'application Flask
CMD ["python", "app.py"]
