# brave-docker
A simple docker container for using brave on the go

# Usage
```bash
docker build -t brave .
docker run --net=host -e DISPLAY=$DISPLAY  brave
```
