FROM centos:6.9

MAINTAINER nextzeus<875697126@qq.com>

#default root 

# install nvm
RUN yum install -y gcc-c++ make
RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -
RUN yum -y install nodejs

RUN npm install pm2@latest -g

# copy project
WORKDIR .
COPY . /data/work

EXPOSE 3001 3010

CMD "sh" "startServer.sh"

# build 
# docker build -t nextzeus/pomelo

# 3001 web-server port
# 3010 game-server connector server clientPort
# docker run -p 49160:3001 49180:3010 -d nextzeus/pomeloandpm2