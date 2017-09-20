Usage
-----
docker run -d -p 8085:8085 -p 54663:54663 -v ~/bamboo/home/bamboo:/home/bamboo --name=bamboo-server bamboo-server
docker logs -f bamboo-server
open http://localhost:8085
docker rm -f bamboo-server
