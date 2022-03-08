```
sudo docker build -t build-dokumente .
DIR=/tmp/dokumente-export/
mkdir $DIR
CURRENTDIR=$(pwd)
sudo docker run -v $DIR:/dokumente/export -v $CURRENTDIR:/dokumente/import build-dokumente
```
