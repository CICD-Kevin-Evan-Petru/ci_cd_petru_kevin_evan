Créer le docker compose

Récupérer le service swag

Y ajouter les différentes dépendances d'environnement et de volume

Ajouter par la suite les services Mariadb et Phpmyadmin

Extraire l'archive tar et y placer le docker compose

Une fois toute les dépendances ajoutés ne pas oublier de mapper le port 80 de la VM au port 80 de l'hôte

Lancer "docker compose up"

Attendre le lancement des services

Se rendre sur l'url qui est maintenant disponible sur le localhost