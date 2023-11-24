Pour installer hugo, on a utilise cette image docker:

```docker run --rm -it \
  -v $(pwd):/src \
  -p 1313:1313
  klakegg/hugo:alpine \
  shell
```

Ceci cree un environnement docker avec le shell Hugo

On cree un nouveau projet hugo, on installe une theme et on run le projet:
``` hugo server --buildDrafts```

le site est accessible sur localhost:1313

---------

Étapes de Configuration
1. Création du fichier .gitlab-ci.yml
On a crée un fichier .gitlab-ci.yml à la racine du projet Hugo.
Ce fichier contiendra toute la configuration nécessaire pour exécuter le pipeline.

2. Configuration du Job pour GitLab Pages
Définissez un job dans .gitlab-ci.yml pour construire et déployer votre site Hugo.
Assurez-vous que les commandes sont exécutées dans le bon répertoire si votre site est dans un sous-dossier.

3. Configuration des Actions du Job
Téléchargement du thème Hugo : Utilisez des sous-modules Git pour télécharger le thème Hugo nécessaire.

4. Spécification des Artefacts
On a défini le chemin vers le répertoire public dans la section artifacts pour conserver les fichiers générés.
On a ausso utilisé publish pour spécifier explicitement le répertoire pour les Pages GitLab.

5. Commit du .gitlab-ci.yml
Après avoir configuré le fichier .gitlab-ci.yml, on a comit et push dans le dépôt Git.

6. Surveillance du Pipeline
Une fois le fichier .gitlab-ci.yml commité, le pipeline GitLab CI/CD se déclenchera automatiquement.
On a sourveillé l'exécution du pipeline dans l'interface GitLab pour détecter et résoudre les erreurs potentielles.

7. Déploiement et Vérification
Après l'exécution réussie du pipeline, le site doit être déployé sur GitLab Pages.
Notre site est disponible sur ```https://oltean-blaise-marcel-tphugo-ynovgang-203e09857fb860bdb41e36e462.gitlab.io/```
