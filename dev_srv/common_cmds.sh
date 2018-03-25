# Build image
sudo docker build -t coap_srv --rm .

# Remove dangling images
sudo docker rmi -f $(sudo docker images --filter "dangling=true" -q --no-trunc)

# Run this command to share X session with docker
sudo docker run -it -h coap_srv --name coap_srv_box --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix coap_srv:latest

# Remove all related a container
sudo docker rmi -f coap_srv:latest

# Log into container as root and change password
docker exec -u 0 -it coap_srv_box bash
passwd coap

6ba1c3ac75dd
docker exec -u 0 -it 6ba1c3ac75dd bash

# Remove all containers
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)