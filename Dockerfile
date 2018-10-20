FROM centos:7

MAINTAINER Leonardo Barros (nickolback@gmail.com)

RUN rpm -Uh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
RUN yum install puppet-agent -y

WORKDIR /puppy

COPY manifest /puppy/manifest
COPY modules /puppy/modules
COPY install.pp /puppy/install.pp

RUN /opt/puppetlabs/bin/puppet apply install.pp
