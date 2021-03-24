FROM 137112412989.dkr.ecr.us-east-1.amazonaws.com/amazonlinux

# Install dependencies
RUN yum -y update 2>&1 >/dev/null
RUN yum install -y yum-utils wget libSM.x86_64 libXrender.x86_64 libXext.x86_64 2>&1 >/dev/null
RUN yum install -y http://dev.mysql.com/get/mysql80-community-release-el6-3.noarch.rpm  2>&1 >/dev/null
RUN yum-config-manager --disable mysql80-community  2>&1 >/dev/null
RUN yum-config-manager --enable mysql57-community  2>&1 >/dev/null
RUN yum install -y mysql-community-client  2>&1 >/dev/null
#
