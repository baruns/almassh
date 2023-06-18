FROM almalinux/8-base

RUN dnf update -y && dnf install -y openssh-server
RUN /usr/bin/ssh-keygen -A
RUN echo 'root:Passw0rd' | chpasswd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]