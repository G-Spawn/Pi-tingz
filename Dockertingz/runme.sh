ip=$1 #change $1 to your ip address of desired nextcloud interface network adapter
docker run -d -p 5443:4443 -p 543:443 -p 69:80 -v ncdata:/data --name CONTAINER-Name-Changeme ownyourbits/nextcloudpi-armhf $IP

# -p sets which ports, 5443 external / back to host, 4443 internal to container/image running for nextcloud. 69 external
# for http and 80 for internal container/image port. You can change ncdata as well to a dir you create just path to it.
# please change the CONTAINER-Name-Changeme to whatever you want (eg. nextcloud.) 
# The $IP at the end binds your hosts local ip address to the nextcloud installation so you dont have to worry too much
# about setting up / creating a docker network.
