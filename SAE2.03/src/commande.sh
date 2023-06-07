#!/bin/bash 



#Commande qui va creer le document pdf avec la table of content et va utiliser un css
pandoc --standalone --toc --css=./style.css -o ../pdf/SAE_2.03_PDF.pdf ./Rapport_SAE2.03.md;

#Commande qui va creer le document html avec la table of content et va utiliser un css
pandoc --standalone --toc --css=./style.css -o ../html/SAE_2.03_HTML.html ./Rapport_SAE2.03.md --metadata title="SAE_2.03";


