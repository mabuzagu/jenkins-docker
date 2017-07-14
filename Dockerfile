FROM schlechtweg/jenkins-nodejs

MAINTAINER Gugu Mabuza "mabuzagu@gmail.com"

#nodejs packages

RUN npm install -g bower

#Allow  bower to run as root
RUN echo '{ "allow_root": true }' > /root/.bowerrc