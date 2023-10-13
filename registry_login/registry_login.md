# Run le container de registry : 
docker run -d -p 5000:5000 --restart always --name registry registry:2

# Se login à au container de registry (attetion à bien mettre le nom du container --> ici registry)
docker login registry

# Se connecter à au registry en spécifiant localhost ainsi que le port ouvert par le container puis renter ses crédentials
docker login 127.0.0.1:5000