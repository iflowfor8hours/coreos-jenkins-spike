FROM matt/puppetbase

RUN mkdir /root/.ssh/
RUN echo 'UserKnownHostsFile=/dev/null' >> /root/.ssh/config
RUN echo 'StrictHostKeyChecking=no' >> /root/.ssh/config
EXPOSE 22
ADD Puppetfile /
ADD slave.pp /
RUN librarian-puppet install
RUN puppet apply --modulepath=/modules slave.pp
