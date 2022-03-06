sudo docker build -t build-dokumente .
DIR=/tmp/dokumente-export/
mkdir $DIR
CURRENTDIR=$(pwd)
sudo docker run --detach=false --rm -v $DIR:/dokumente/export -v $CURRENTDIR:/dokumente/import -it build-dokumente /bin/bash
