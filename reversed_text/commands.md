# Utilisation de alpine comme vous l'avez évoquer
FROM alpine:latest

# Copier le fichier texte dans l'image
COPY mon_fichier.txt /mon_fichier.txt

# Inverser les lignes du fichier texte en utilisant awk (commande trouvé sur internet)
RUN awk '{a[i++]=$0} END {for (j=i-1; j>=0;) print a[j--] }' /mon_fichier.txt > /mon_fichier_inverse.txt

# Run du fichier avec le texte inversé au lancement de l'image
CMD cat /mon_fichier_inverse.txt