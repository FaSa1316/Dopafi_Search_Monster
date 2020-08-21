# Dofapi_Search_Monster
Notre programme du jour consiste à retrouver des informations concernant quelques monstres "Larves", "Monstres des cavernes", "Monstres des Plaines herbeuses" sur le site de jeu "Dofapi". Ici, nous allons utiliser les API REST pour pouvoir récupérer ses informations. Sur ce, vous pouvez consulter sur le site de les documentations les concernant et l'API de dofapi sur ces liens ci-dessous :
- https://dofapi.fr/
- https://fr.dofus.dofapi.fr/explorer/

# Pré requis
Avant toutes choses, nous vous invitons à télécharger ou à cloner notre application sur votre machine locale. Vous pouvez lancez la commande suivant depuis votre terminal dans l'endroit où vous voulez sauvegarder et excécuter le programme : 

``` bash
git clone https://github.com/FaSa1316/Dopafi_Search_Monster.git

```
Avant d'excécuter notre programme, nous aurrons besoin de quelque fonctionnalités pour pouvoir le lancer. Pour se faire, nous vous invitons à vous rediriger sur le dossier là où vous avez cloner l'application. Puis ouvrez de nouveau votre terminal et tapez : 

``` bash
bundle

```

cette ligne de commande installera toutes les gems que nous aurons besoins pour lancer notre application.

# Démarrer le programme

Ici encore, nous allons utiliser le terminal en tapant le code suivant : 
``` bash
ruby app.rb

```
Le programme va vous demandez ensuite le type de monstre que vous voulez avoir et selon votre requêten, le programme va sauvegarder les informations ou ses ressources qu'il aura touvé dans un fichier sous format JSON que l'on a crée préalablement à l'avance. L'emplacement sera visible dans le dossier db, et nommé selon les types de monstres pré-cité : 
- "monstre_larve.json", 
- "monstre_caverne.json",
- "monstre_plaine_herbeuse.json".

Vous pouvez ainsi sélectionner votre fichier dans ce dossier, récupérer les informations qui vous sera utiles et à nous la gloire ;) 

# Auteur
RAMAHATAFANDRY Fanomezana Nirina : https://github.com/FaSa1316
