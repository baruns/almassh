#############################<br>
<b>About</b><br>
#############################<br>
AlmaLinux 8 Dockerfile with SSH enabled<br><br><br>


#############################<br>
<b>Docker Installation</b><br>
#############################<br>
yum install -y yum-utils<br>
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo<br><br>

yum install docker-ce containerd.io<br>
systemctl enable docker<br>
systemctl start docker<br><br><br>


#############################<br>
<b>Docker Build and Login</b><br>
#############################<br>
docker build -t almassh .<br>
docker run -d -h <HostName> --name <DockerName> almassh<br>
docker inspect host | grep '"IPAddress"'<br>
ssh root@IP<br><br><br>


#############################<br>
<b>Docker Container Login Info</b><br>
#############################<br>
UserName: root<br>
Password: Passw0rd