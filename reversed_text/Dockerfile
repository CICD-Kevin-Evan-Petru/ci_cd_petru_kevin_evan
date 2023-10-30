FROM alpine:latest

COPY mon_fichier.txt /mon_fichier.txt

RUN awk '{a[i++]=$0} END {for (j=i-1; j>=0;) print a[j--] }' /mon_fichier.txt > /mon_fichier_inverse.txt

CMD cat /mon_fichier_inverse.txt
