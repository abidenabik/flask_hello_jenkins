# Description du pipeline Jenkins

## Objectif
Ce pipeline permet de :
- Cloner le repo GitHub
- Builder l'image Docker
- Pusher l'image Docker sur Docker Hub
- Déployer l'application sur Kubernetes

## Étapes

1. **Checkout Git**
   - Clonage du repo via SSH ou HTTPS
   - Vérification des credentials
2. **Build Docker**
   - Création de l'image Docker
3. **Push Docker**
   - Connexion à Docker Hub
   - Push de l'image
4. **Deploy Kubernetes**
   - Mise à jour du deployment avec la nouvelle image

## Notes
- Les credentials GitHub et Docker Hub doivent être créés dans Jenkins
- Kubectl doit être configuré pour accéder au cluster
