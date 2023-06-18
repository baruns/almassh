#############################<br>
About<br>
#############################
AlmaLinux 8 Dockerfile with SSH enabled<br><br><br>


#############################<br>
Docker Installation<br>
#############################<br>
yum install -y yum-utils<br>
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo<br><br>

yum install docker-ce containerd.io<br>
systemctl enable docker<br>
systemctl start docker<br><br><br>


#############################<br>
Docker Build and Login<br>
#############################<br>
docker build -t almassh .<br>
docker run -d -h <HostName> --name <DockerName> almassh<br>
docker inspect host | grep '"IPAddress"'<br>
ssh root@IP<br><br><br>


#############################<br>
Docker Container Login Info<br>
#############################<br>
UserName: root<br>
Password: Passw0rd