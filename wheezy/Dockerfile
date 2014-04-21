FROM debian:wheezy

# SSH
EXPOSE 22
RUN apt-get update
RUN apt-get -y install openssh-server sudo wget
RUN mkdir -p /var/run/sshd
RUN sed 's/UsePAM yes/UsePAM no/' -i /etc/ssh/sshd_config
RUN sed 's/#PermitRootLogin yes/PermitRootLogin yes/' -i /etc/ssh/sshd_config
RUN sed 's/#PermitEmptyPasswords no/PermitEmptyPasswords no/' -i /etc/ssh/sshd_config
RUN /usr/sbin/sshd
RUN echo 'root:toor' | chpasswd

#Puppet
RUN apt-get -y install rubygems build-essential git
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc
RUN gem install puppet librarian-puppet

ENTRYPOINT ["/usr/sbin/sshd"]
CMD ["-D"]
