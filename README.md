# Offizielle Vereinsdokumente

[![Generate PDFs via Pandoc](https://github.com/opennet-initiative/dokumente/actions/workflows/pandoc.yml/badge.svg)](https://github.com/opennet-initiative/dokumente/actions/workflows/pandoc.yml)

Hier verwalten wir die offiziellen Vereinsdokumente vom Verein "Opennet Initiative e.V."

* Derzeit gültige Version: https://downloads.opennet-initiative.de/verein/dokumente
* Versionsverwaltung: https://github.com/opennet-initiative/dokumente
* Umwandlung in PDF: 
  * Voraussetzungen: pandoc + LaTeX (z.B. BasicTeX - incl. KOMA Scripts und pdflatex)
  * Einzeldokumente: `find ./ -iname '*.md' -type f -exec sh -c 'pandoc ${0} -o ${0%.md}-$(date "+%Y%m%d").pdf' {} \;`
  * Sammeldokument: `pandoc *.md -o ONI_Dokumente-$(date "+%Y%m%d").pdf`
* Webseite und Wiki: https://opennet-initiative.de

Erstellung via Docker:

    sudo docker build -t build-dokumente .
    DIR=/tmp/dokumente-export/
    mkdir $DIR
    CURRENTDIR=$(pwd)
    sudo docker run -v $DIR:/dokumente/export -v $CURRENTDIR:/dokumente/import build-dokumente
