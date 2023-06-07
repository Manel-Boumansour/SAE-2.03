<head> 
	<link rel="stylesheet"  type="text/css" href="style.css"> 
</head>

# Rapport SAE 2.03
#### Manel BOUMANSOUR, Léa DEMORY | Groupe C
 
   
 ## Installation de la machine virtuelle manuellement
  Afin d'installer une machine virtuelle sur notre environnement, il faut passer par plusieurs étapes :

### _Configuration matérielle dans VirtualBox_
La première étape à la création d'une machine virtuelle est de définir un **nom à la machine**, un **emplacement** où seront stocké les fichiers dans votre ordinateur (un chemin plus précisément), un **type**(donc un système d'exploitation) et une **version** du système d'exploitation avec le nombre de bits voulu.

![Création machine](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/SAE1.png)
  
Ensuite, il faut paramétrer la mémoire vive et le disque dur, et enfin la machine virtuelle est crée. Il nous est donc possible à présent de voir ses caractéristiques. Nous pouvons apercevoir que par défaut, _VirtualBox_ a appliqué la configuration réseau NAT à notre machine.

![Configuration](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/SAE3.png)

Lorsqu'une machine virtuelle est crée par _VirtualBox_, la configuration de la machine est stockée dans un fichier XML **VirtualBox.xml-prev** crée automatiquement lors de la création de la machine.

### _Installation OS de base_

Une fois la configuration matérielle terminée, il faut installer un **système d’exploitation**. Pour cela, il faut insérer une **image iso bootable** dans un lecteur de **cdrom virtuel** présent par défaut. Une **image** ou **fichier ISO** est un fichier, qui porte l’extension _“.iso”_, contenant l’intégralité de son support d’origine (d’un CD par exemple), particulièrement tout ce qui pourrait être nécessaire à l’installation et à l’utilisation d’un système d’exploitation, d’un logiciel ou bien même d’un jeu. On dit qu’il est **“bootable”** lorsque l’on peut démarrer un ordinateur via ce fichier ISO.

![install](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/install.PNG)

Ensuite, la machine peut être démarrée. La machine démarre vers l’installateur **Debian**. Il suffit de cliquer sur “Install” pour commencer. Dans un premier temps, nous configurons la langue, dans le cas présent “_Français_”, puis nous choisissons la localisation, présentement “_France_”, et la configuration du clavier, ici “_Français_” (AZERTY).

![langue](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/langue.PNG)
![langue](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/pays.PNG)
![clavier](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/clavier.PNG)

Nous nommons la machine “_serveur_”.

![nom](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/nom.PNG)

Il ne faut pas oublier de rentrer de domaine pour le réseau.

![domaine](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/domaine.PNG)

Nous configurons le superutilisateur “_root_”.


![root](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/root.PNG)

Puis un compte utilisateur “_User_”.

![User1](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/User1.PNG)
![User2](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/user2.PNG)
![User3](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/user3.PNG)

Pour la partition du disque nous choisissons **1 seule partition** recouvrant le disque entier.

![partition1](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/partition1.PNG)
![partition2](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/partition2.PNG)
![partition3](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/partition3.PNG)

Plusieurs noyaux possibles se présentent à nous, on laisse celui par défaut. Par la suite, nous prenons l’image générique.

  

On choisit ensuite un **miroir**, premièrement le pays, “_France_”, puis le miroir le plus proche _“[http://debian.polytech-lille.fr](http://debian.polytech-lille.fr)”_.

![miroir](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/mirroir.PNG)

Nous choisissons notre serveur mandataire _“[http://cache.univ-lille.fr:3128](http://cache.univ-lille.fr:3128)”_. Un **serveur mandataire**, ou **proxy**, agit comme un filtre sur les sites web que l’on consulte et il permet de sécuriser les connexions et aussi de cacher l’identité de la machine à l’origine de la requête au serveur qui la recevra. Il est par exemple utile au sein d’une entreprise ou d’un établissement scolaire pour limiter l’accès à certains sites internet.

![proxy](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/proxy.PNG)

Nous devons désormais choisir ce que nous souhaitons installer sur notre machine parmi une liste de logiciels.

![logi](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/logiciels.PNG)

Nous sélectionnons “_MATE_” (et n’oublions pas de désélectionner “_GNOME_”). Ils fournissent un ensemble d’outils, d'applications pour gérer l’apparence et fonctionnalités graphiques : ce sont des environnements de bureau. **GNOME** (**G**NU **N**etwork **O**bject **M**odel **E**nvironment) est utilisé par défaut dans plusieurs systèmes Linux tels que **Ubuntu** et **Manjaro**. **MATE** est la continuation du bureau GNOME 2. Ils sont tous deux open source.

  

Nous sélectionnons “_serveur web_”. Les serveurs web sont constitués de “_software_”, composants logiciels, et de “_hardware_”, composants matériels. Au niveau matériel, un **serveur web** est un ordinateur connecté à Internet qui stock des données ou des fichiers (tels que des fichiers HTML ou JavaScript, des images ou bien des feuilles de style CSS) qui peuvent être échangés avec un autre appareil connecté à Internet. Le logiciel contrôle la façon dont les utilisateurs peuvent accéder aux fichiers hébergés. On retrouvera au minimum un serveur HTTP, il s’agit d’un logiciel qui comprend les URL et les requêtes HTTP.

  

Nous sélectionnons “_serveur ssh_”. **SSH** signifie “_Secure Shell_”. Il s’agit d’un protocole de communication sécurisé qui permet d’accéder à distance à un ordinateur.

  

Nous sélectionnons ”_utilitaire usuels du système_”.

  

Une fois l’installation terminée, nous pouvons supprimer l’iso d’installation pour économiser de l’espace.

### _Les droits sudo_

Nous pouvons visualiser les groupes d’un utilisateur (ici _user_), nous utilisons la commande _groups user_ pour afficher les différents groupes auquels _user_ appartient.

![sudo](https://cdn.discordapp.com/attachments/1024646421007302696/1079372926513586246/les-groupes.png)

### _Suppléments invités_

Le noyau Linux, ajouté par la VM est celui-ci :

![sudo](https://cdn.discordapp.com/attachments/1024646421007302696/1079372927088218132/version-noyau.png)

Les suppléments invités VirtualBox comprennent des pilotes de périphériques et des applications système qui optimisent le système d’exploitation pour de meilleures performances et une utilisation optimale.  

  *  #### La commande  _mount_:
 La commande _mount_ permet de demander au système d’exploitation de rendre un système de fichiers accessible, à un emplacement spécifié  
Dans **notre** cas de figure cette commande nous permet d’ajouter les paramètres nécessaires pour les ajustements graphiques de VirtualBox, comme par exemple, le glissé déposé ente la machine principale et la virtuelle, ou encore l’ajustement de la taille de la fenêtre par rapport à l’écran.

## Installation Debian automatisée par préconfiguration

### _Documentation_

**1. Qu’est-ce que le Projet Debian ? D’où vient le nom Debian ?**

Le projet Debian est un groupe mondial de volontaires ayant pour but de produire un système d’exploitation exclusivement constitué de logiciels libres. Il est lancé en 1993 par [Ian Murdock](https://en.wikipedia.org/wiki/Ian_Murdock). Le nom “Debian” provient de la contraction des prénoms du fondateur de Debian, Ian Murdock (1973-2015), et de celui de son épouse, Debra Lynn.

![Ian Murdock](https://lh4.googleusercontent.com/zAJkW-40993ybDn2s4iHs606nr5kFb38kvJKd_z8K72r-YCPLf-sIM8aNzJoVuzy8ERScbFh8nxStteg26HQftNgC0RddSK_CZctyCf8P75bLLOiB2uw8uBTf44ZhofkTL20kfOwng4hWoqPk6XV_Zk)

**2. Il existe 3 durées de prise en charge (support) de ces versions : la durée minimale, la durée en support long terme (LTS) et la durée en support long terme étendue (ELTS). Quelles sont les durées de ces prises en charge ?**
-   LTS : 5 ans est un projet ayant pour but d’étendre la durée de vie de toutes les versions stables de Debian à (au moins) 5 ans. Il n’est pas gérée par l’équipe chargée de la sécurité de Debian, mais par un groupe distinct de bénévoles et sociétés intéressées pour en faire un succès.

  -   ELTS : 10 ans (5 ans supplémentaires après les 5 ans offerts par le projet LTS) est une offre commerciale offrant un prolongement de la durée de vie de 10 ans des versions de Debian. Il ne s'agit pas d'un projet officiel de Debian.
 
 **3. Pendant combien de temps les mises à jour de sécurité seront-elles fournies ?**

L'équipe chargée de la sécurité essaye de prendre en charge la distribution stable environ un an après que la version stable suivante ait été publiée, sauf lorsqu'une autre distribution stable est publiée la même année.

**4. Combien de versions au minimum sont activement maintenues par Debian ? Donnez leur nom générique (= les types de distribution).**

Debian maintient toujours activement au minimum 3 versions :

-   “_stable_” : cette distribution contient la dernière sortie officielle de Debian, actuellement, il s’agit de Debian 11 (dit Bullseye).
    
-   “_testing_” : cette distribution contient les paquets qui sont en attente d’être acceptés dans la distribution stable, actuellement, il s’agit de Bookworm.
    
-   “_unstable_” : c’est sur cette distribution que les activités de développement se déroulent, cette dernière est toujours appelée Sid.

**5. Chaque distribution majeure possède un nom de code différent. Par exemple, la version majeure actuelle (Debian 11) se nomme Bullseye. D’où viennent les noms de code donnés aux distributions ?**

Les noms de code donnés viennent du célèbre film Pixar : [Toy Story](https://www.pixar.com/feature-films/toy-story). En effet, lors de la publication de Debian 1.1, le chef du projet Debian, [Bruce Perens](https://fr.wikipedia.org/wiki/Bruce_Perens), travaillait chez Pixar, c’est lui qui a lancé la tradition

![Bruce Perens](https://lh4.googleusercontent.com/gpHbQfcq73oqssCa-BW_7uXeFQ4XVXyRc5TZ0xVZXyaLJN5_vdGJ0rS2YAVULiBYGSyuCTwWccLtxo4ewpYxT7IIJQFVsUZIyQa67tTsV33_j4rBTWMtnNHQ0otecy2SQ9Ukjt_IV9TDZMyZlAz4X5E)
 
**6. L’un des atouts de Debian fut le nombre d’architecture (= processeurs) officiellement prises en charge. Combien et lesquelles sont pris en charge par la version Bullseye ?**

Il y a au total 9 architectures prises en charge par Debian 11 :

-   amd64
    
-   i386
    
-   ppc64e
    
-   s390x
    
-   armel
    
-   armhf
    
-   arm64
    
-   mipsel
    
-   mips64el
 
**7. Première version avec un nom de code (Quel a été le premier nom de code utilisé ? Quand a-t-il été annoncé ? Quel était le numéro de version de cette distribution ?)**

Le premier nom de code utilisé fut **_Buzz_**, il s’agit du nom de code de la version 1.1, publiée le 17 juin 1996.

![Buzz](https://lh6.googleusercontent.com/53UaYwACqCk7hsuFGDkc8l75WVscO6KJNEmwpuy2OPyi48zQVp_N0Efs8Ed_Gvd5JM9HprmNIsbBWPCigo-zBa8LpHLUKX-jTligTZfPz56zPSwnuwQsbcgbR0Tm1vxv8SyhH9EqktudQhLVJwyQHx8)

**8. Dernier nom de code attribué (Quel est le dernier nom de code annoncé à ce jour ? Quand a-t-il été annoncé ? Quelle est la version de cette distribution ?)**

La dernière version de debian publiée est **_Bullseye_** ,il s’agit de la version 11 qui est l’actuelle version “stable”. Elle a été annoncée le 6 juillet 2016 et publiée le 14 août 2021.
![Bulleseye](https://lh5.googleusercontent.com/iBDZY_O4tFdXcktOrnx1DHC4JYdvUVr7MqzudEqxatq6YsOej9LhkieB0_BToKhXDd05syGa85wA2I-Yh6JK9OO1_TwF-EDmGwdLmwdevzwGzdf9a2NMJlsf9_ml1NbPKZ73gp2qVKReIJDCI5ZmFSc)

Debian est en train de développer une nouvelle version, Debian 12, ayant pour nom de code **_Bookworm_** qui a été annoncée le 16 avril 2018, c’est l’actuelle version “_testing_”.

![Bookworm](https://lh6.googleusercontent.com/lESCddNFVRzrRoaTSJjLvWVvltD8TWgyEQp_ziUAhl5z0PQw3-7KZbCrjwVlSwwkMpRa2KwPw7G9Ju2QJJUhRjiIjnoCBdm3jHwee36mW2eFO4fny7MhoOWo7-YSdw-rQiHAGwf48bGqqGBtin2653I)

### _Installation préconfigurée_
Dans un premier temps, il nous faut créer la machine virtuelle sur _VirtualBox_, de la même manière que vue précédemment.

La machine porte le nom sae203b, elle est de type linux debian 64-bit, elle se trouve dans le fichier **/usr/local/virtual_machine/infoetu/login**, elle a 2048 Mo de RAM et 20 GO de disque dur.

![Config](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/Capture%20d'%C3%A9cran%202023-03-25%20171505.png)

Il faut décompresser le fichier autoinstall.zip au même endroit que la VM et faire la commande :

    sed -i -E "s/(--iprt-iso-maker-file-marker-bourne-sh).*$/
    \1=$(cat /proc/sys/kernel/random/uuid)/" S203-Debian11.viso

Ensuite, nous passons à la mise en place du fichier S203_Debian11.viso dans le lecteur optique de la machine virtuelle.
Nous pouvons commencer le démarrage de l’auto installation.

Pour mettre les droits sudo à l’user, il faut mettre MATE comme bureau et installer les paquets il faut :

-   ajouter sudo aux groupes du user dans la partie Utilisateur Standard : d-i passwd/user-default-groups string audio cdrom video sudo
    
-   ajouter tous les paquets à installer dans la partie Packages, Mirrors, Image : d-i pkgsel/include string sudo git sqlite3 curl bash-completion neofetch
    
-   ajouter MATE comme style de bureau de base dans la partie installation de meta-paquetages : tasksel tasksel/first multiselect standard ssh-server mate-desktop desktop
    

Nous lançons l’installation et mettons 2 CPU pour que la machine puisse se lancer.

**L’installation est désormais terminée !**

## Installation du service Gitea

### _Git-gui et Gitk_

Maintenant que la configuration de notre machine est désormais finie, avec les paquets installés, il faut à présent effectuer la configuration globale de git.

Pour cela, il faut d'abord ouvrir un terminal et entrer les commandes suivantes :

    git config --global user.name "Prénom Nom"
    git config --global user.email "votre@email"
    git config --global init.defaultBranch "master"


**Note :** Bien évidemment, il faudra remplacer les _Prénom_, _Nom_ et _votre@email_ par les vôtres.

Ensuite, il faut installer le paquet _git-gui_ afin d'y avoir accès sur notre machine. 

_Git-Gui_  est une interface graphique basée sur le langage Tcl/Tk pour Git. Elle permet aux utilisateurs d'effectuer les opérations git courantes, qui seront donc implémenté en Tcl/Tk, tels qu'apporter des modifications avec des nouveaux commit, modifier ceux qui existent déjà, etc.

Afin de lancer le logiciel, il suffit de taper son nom dans le terminal :

    git gui

Mais nous pouvons aussi lui associer directement une commande souhaitée, ainsi il faudrait ajouter à cette instruction sa commande et si souhaité aussi des arguments :

    git gui [<command>] [<arguments>]

![guit-gui](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/git-gui.png)
Il existe également le logiciel _GitK_ qui serait important d'installer.

_GitK_ est également une interface liée à Git mais nous qui nous permet elle de visualiser de façon détaillé et graphique l'historique Git, donc de voir toutes les actions effectuer dessus tels que les _commits_ .

Pour le lancer, il suffit également de taper son nom sur le terminal :

    gitk

![guitk](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/gitk.png)

Avec Git, il est possible de définir un proxy par défaut. Pour cela, il suffit de taper la ligne de commande suivante :

    % git config --add core.gitproxy ' "proxy-command" for proxy-iut.com'

_proxy-iut_ étant par exemple le proxy de l'IUT, ou le proxy que vous souhaitez mettre par défaut.

Avant de procéder à l'installation de Gitea, nous allons rediriger le port 3000 de la machine physique vers le port 3000 de la machine virtuelle. 

Pour cela, nous allons nous diriger vers la configuration de la machine > Réseau et on va cliquer sur redirection de ports :

![Réseau1](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/config%20reseau%202.png)

Puis, on va ajouter un port avec le plus vert su le côté et rentrer les données comme l'image suivante :

![Réseau2](https://raw.githubusercontent.com/Melda04/SAE-2.03/main/config%20reseau%201.png)

Nous pouvons enfin débuter l'installation de Gitea !

### _Fichier Binaire_
Tout d'abord, _Gitea_ est une interface web permettant de visualiser les branches, les commits, les tags, etc de ses projets git mais permet également la gestion du code source. Il comporte un système de suivi des bugs, un wiki ainsi que des outils pour la relecture de code. 

Ainsi, _Gitea_ est une solution d'hébergement de code léger écrit en Go (langage de programmation). Ce logiciel est ainsi comparable avec _GitLab_ ou encore _GitHub_ qui possède le même but et se ressemble fortement en termes de fonctionnalité, ils peuvent ainsi être des alternatives à _Gitea_.

Passons donc à l'installation de Gitea:
* Installation du binaire :

Tout d'abord, télécharger le fichier correspondant à la plate-forme que vous souhaitez [ici](https://dl.gitea.com/gitea/).
Pour cela, taper dans le terminal les lignes de commandes suivantes en modifiant l'URL par celle choisit précédemment (dans notre cas, ce sera la version 1.18.5)  :

    wget -O gitea https://dl.gitea.com/gitea/1.18.5/gitea-1.18.5-linux-amd64
    chmod +x gitea

**Note** : La commande _chmod_ vous permet d'obtenir les droits d'exécution sur le logiciel. 

Il faut désormais vérifier la signature GPG, et donc télécharger le fichier signature pour le binaire téléchargé juste avant et utilisez l'outil de ligne de commande GPG :

    gpg --keyserver keys.openpgp.org --recv 7C9E68152594688862D62AF62D9AE806EC1592E2
    gpg --verify gitea-1.18.5-linux-amd64.asc gitea-1.18.5-linux-amd64

**L'installation du binaire est désormais terminée !**

### _Gitea_
On souhaite activer le démarrage automatique de _Gitea_ au démarrage, pour cela, on va taper dans le terminal les commandes suivantes :

    sudo systemct1 enable gitea
    sudo systemct1 start gitea


Nous allons passer au démarrage et au paramétrage de _Gitea_. 

On vérifie tout d'abord que le service est bien démarré avec la commande suivante :

    systemctl status gitea.service

Puis, on va utiliser le navigateur web de notre machine physique et nous rendre à l'adresse suivante ([ici](http://localhost:3000)), et modifier les paramètres :

* Type de base de données : **SQLite3**
* Nom d'utilisateur administrateur : **gitea**
* Mot de passe : **gitea**
* Adresse e-mail : **git@localhost**

**L'installation de Gitea est terminée !**



 ## Sources

### Installation de la machine virtuelle manuellement

*  **[https://docs.oracle.com/cd/E26217_01/E35193/html/qs-guest-additions.html#:~:text=Les Additions invité VirtualBox comprennent,performances et une utilisation optimale](https://docs.oracle.com/cd/E26217_01/E35193/html/qs-guest-additions.html#:~:text=Les%20Additions%20invit%C3%A9%20VirtualBox%20comprennent,performances%20et%20une%20utilisation%20optimale)**
*  **[https://www.commentcamarche.net/informatique/windows/757-creer-ou-ouvrir-un-fichier-iso-sur-pc/](https://www.commentcamarche.net/informatique/windows/757-creer-ou-ouvrir-un-fichier-iso-sur-pc/)**

* **[https://www.ionos.fr/digitalguide/serveur/know-how/quest-ce-quun-fichier-iso/](https://www.ionos.fr/digitalguide/serveur/know-how/quest-ce-quun-fichier-iso/)**

* **[https://ubuntu-mate.org/fr/about/#:~:text=Le%20Bureau%20MATE%20est%20une,moniteur%20syst%C3%A8me%20et%20un%20terminal](https://ubuntu-mate.org/fr/about/#:~:text=Le%20Bureau%20MATE%20est%20une,moniteur%20syst%C3%A8me%20et%20un%20terminal)**

* **[https://fr.wikipedia.org/wiki/GNOME](https://fr.wikipedia.org/wiki/GNOME)**

* **[https://wiki.debian.org/fr/MATE](https://wiki.debian.org/fr/MATE)**

* **[https://developer.mozilla.org/fr/docs/Learn/Common_questions/Web_mechanics/What_is_a_web_server](https://developer.mozilla.org/fr/docs/Learn/Common_questions/Web_mechanics/What_is_a_web_server)**

* **[https://www.hostinger.fr/tutoriels/serveur-web](https://www.hostinger.fr/tutoriels/serveur-web)**

* **[https://www.lemagit.fr/definition/SSH-Secure-Shell#:~:text=SSH%2C%20ou%20Secure%20Socket%20Shell,mettent%20en%20oeuvre%20le%20protocole](https://www.lemagit.fr/definition/SSH-Secure-Shell#:~:text=SSH%2C%20ou%20Secure%20Socket%20Shell,mettent%20en%20oeuvre%20le%20protocole)**

* **[https://help.gnome.org/users/gnome-help/stable/net-proxy.html.fr](https://help.gnome.org/users/gnome-help/stable/net-proxy.html.fr)**

### Installation Debian automatisée par préconfiguration

* **[https://www.debian.org/doc/manuals/project-history/intro.fr.html](https://www.debian.org/doc/manuals/project-history/intro.fr.html)**
* **[https://wiki.debian.org/fr/LTS](https://wiki.debian.org/fr/LTS)**
* **[https://wiki.debian.org/LTS/Extended](https://wiki.debian.org/LTS/Extended)**
* **[https://www.debian.org/security/faq.fr.html#lifespan](https://www.debian.org/security/faq.fr.html#lifespan)**
* **[https://www.debian.org/releases/index.fr.html](https://www.debian.org/releases/index.fr.html)**
* **[https://wiki.debian.org/fr/ToyStory](https://wiki.debian.org/fr/ToyStory)**
* **[https://wiki.debian.org/DebianBullseye](https://wiki.debian.org/DebianBullseye)**
* **[https://wiki.debian.org/fr/DebianBuzz](https://wiki.debian.org/fr/DebianBuzz)**
* **[https://wiki.debian.org/fr/DebianBullseye](https://wiki.debian.org/fr/DebianBullseye)**
* **[https://wiki.debian.org/fr/DebianBookworm](https://wiki.debian.org/fr/DebianBookworm)**

### Installation du service Gitea

* **https://fr.wikipedia.org/wiki/Git#:~:text=git%2Dgui%20%3A%20outil%20permettant%20les,graphique%20d'un%20historique%20Git**
* **https://git-scm.com/docs/git-gui/**
* **http://codeur-pro.fr/git-gui-guide-complet/**
* **https://git-scm.com/docs/git-config/fr**
* **https://framalibre.org/content/gitea**
* **https://fr.wikipedia.org/wiki/Gitea**
* **https://www.logiciels.pro/logiciel-saas/gitea/**
* **https://docs.gitea.io/en-us/install-from-binary/**
* **https://docs.gitea.io/en-us/linux-service/**



