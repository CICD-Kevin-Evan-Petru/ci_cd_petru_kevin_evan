# Clone du projet
git clone https://github.com/olliefr/docker-gs-ping

# Redirection dans le projet
cd docker-gs-ping/

# Build de l'image téléchargé préalablement
docker build -t test-go .

# Lancement de l'image en bindant le port 8080 du container au port 8080 de l'hôte
docker run -p 8080:8080 test-go

# Lancement du localhost avec le port 8080 pour accéder au serveur go préalablement lancé dans docker
http://localhost:8080