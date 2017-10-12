Usage
-----
#### Run (note persistent volume)
```
docker run -d -p 8085:8085 -p 54663:54663 -v ~/bamboo/home/bamboo:/home/bamboo --name=bamboo-server jimfdavies/bamboo-server-alpine
```
#### Watch it load
```
docker logs -f bamboo-server
```
#### Open it up (if your system likes 'open')
```
open http://localhost:8085
```
#### Get rid of it
```
docker rm -f bamboo-server
```
