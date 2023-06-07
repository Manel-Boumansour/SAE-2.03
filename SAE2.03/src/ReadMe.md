**Rapport SAE 2.03 --> Manel Boumansour et Léa Demory**

**Description**

L'archive ci-jointe présente un fichier markdown, un fichier html, un fichier pdf, un fichier CSS ainsi qu'un fichier excécutable .sh .

**Fichier Markdown**

Ce fichier markdown contient un rapport expliquant en détails les différentes étapes de l'installation de Debian afin qu'un débutant puisse l'appliquer. Ce rapport combine donc les étapes d'installation
mais également de nombreuses questions/réponses afin d'être mieux renseigné sur ce que l'on fait.
Ce fichier markdown a servit de base, mais pour être plus présentable, il est nécessaire de le convertir en fichier HTML et PDF.

**Prérequis**

Nous avons décidé pour ce rapport, d'effectuer les conversions de fichier à partir de pandoc et de PdfLatex. Dans notre cas, vous trouverez dans l'archive les fichiers HTML et PDF déjà généré, mais si vous
souhaitez à nouveau générer les fichiers, il faudra que votre ordinateur soit doté de pandoc et PdfLatex afin d'exécuter le fichier `./commande.sh`.

Il vous suffit d'installer les paquets pandoc et PdfLatx avec la commande `sudo apt install ` + le nom du paquet souhaité.

**Fichier HTML**

Notre fichier HTML est donc généré à partir du fichier markdown mais est également relié à un fichier CSS `style.css` qui se trouve dans le dossier `src` de l'archive.  
Ce fichier CSS apporte de nombreuses modifications à notre fichier, telles que le centrage des images, les différents styles d'écriture, les couleurs des textes, etc...
Ainsi, la ligne permettant de générer le fichier HTML, relié à notre CSS dans le fichier exécutable `commande.sh` est :

`pandoc --standalone --toc --css=./style.css -o ./SAE_2.03_HTML.html ./Rapport_SAE2.03.md --metadata title="SAE_2.03"`

- `pandoc` étant un outil en ligne de commande qui permet de convertir des documents en différents formats.
- `--standalone` permettant de créer un fichier externe (`SAE_2.03_HTML.html`) avec le résultat de la commande.
- `--toc` permettant lui de créer une table de matière au document de sortie (`SAE_2.03_HTML.html`).
- `--css` permettant d'appliquer le CSS au fichier de sortie (`SAE_2.03_HTML.html`) .

Ou sinon, il est également possible de générer directement le fichier HTML à partir de l'interface graphique où a été crée le fihcier markdown, et d'ajouter dans le fichier html
la ligne de commande suivante afin d'intégrer le fichier CSS à l'HTML :

`<link rel="stylesheet"  type="text/css" href="style.css">`

**Fichier PDF**

Notre fichier PDF est donc lui aussi généré à partir du fichier markdown et relié au même fichier CSS `style.css`, se trouvant donc dans le dossier `src` de l'archive.  
Donc, la ligne permettant de générer le fichier PDF, relié à notre CSS dans le fichier exécutable `commande.sh` est :

`pandoc --standalone --toc --css=./style.css -o ./SAE_2.03_PDF.pdf ./Rapport_SAE2.03.md`

- `pandoc` étant un outil en ligne de commande qui permet de convertir des documents en différents formats.
- `--standalone` permettant de créer un fichier externe (`SAE_2.03_PDF.pdf`) avec le résultat de la commande.
- `--toc` permettant lui de créer une table de matière au document de sortie (`SAE_2.03_PDF.pdf`).
- `--css` permettant d'appliquer le CSS au fichier de sortie (`SAE_2.03_PDF.pdf`) .

Néanmoins, il n'est pas nécessaire de relier le fichier PDF au fichier CSS, ainsi nous pouvons simplement convertir notre fichier markdown en PDF par le biais d'un convertisseur.
Cela est plus simple et est légitime dans le cadre de ce rendu.