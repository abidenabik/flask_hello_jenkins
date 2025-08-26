FROM python:3.7

# Ne pas lancer l'app en root dans Docker
RUN useradd flask
WORKDIR /home/flask

# Copier le projet dans le conteneur (sauf ce qui est dans .dockerignore)
ADD . .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Rendre app.py exécutable et donner les bons droits
RUN chmod +x app.py test.py && \
    chown -R flask:flask ./

# Définir la config de l'app Flask
ENV FLASK_APP=app.py
EXPOSE 5000

# Lancer en tant qu'utilisateur flask
USER flask

# Commande par défaut
CMD ["./app.py"]
