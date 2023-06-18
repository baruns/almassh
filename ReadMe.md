#############################
About
#############################
AlmaLinux 8 Dockerfile with SSH enabled


#############################
Docker Installation
#############################
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

yum install docker-ce containerd.io
systemctl enable docker
systemctl start docker


#############################
Docker Build and Login
#############################
docker build -t almassh .
docker run -d -h <HostName> --name <DockerName> almassh
docker inspect host | grep '"IPAddress"'
ssh root@IP


#############################
Docker Container Login Info
#############################
UserName: root
Password: Passw0rd