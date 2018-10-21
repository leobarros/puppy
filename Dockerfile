FROM centos:7

MAINTAINER Leonardo Barros (nickolback@gmail.com)

RUN rpm -Uh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
RUN yum install puppet-agent -y

RUN mkdir /puppy
RUN mkdir /puppy/{manifest,modules}
COPY install.pp /puppy/install.pp
WORKDIR /puppy
RUN /opt/puppetlabs/bin/puppet apply install.pp
RUN touch site.pp /puppy/manifest/
