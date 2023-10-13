Rédiger un docker compose avec les services suivant:

mysql, mariadb, phpmyadmin

set les ports de mysql sur 3306
set les ports de mariadb sur 3307
set les ports de phpmyadmin 8080 --> accéssible vers l'exterieurs

set les volumes mysql-data ainsi que mariadb-data pour la persistance des données

Lancer le docker compose avec "docker compose up -d"

Le service phpmyadmin est désormais accéssible depuis la machine hôte