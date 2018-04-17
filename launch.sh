docker run -d \
  -p 8080:8080 \
  -p 9000:9000 \
  --privileged \
  -e DOCKER_DAEMON_ARGS="-H tcp://127.0.0.1:4243 -H unix:///var/run/docker.sock" \
  --restart=always \
  -v ~/schlechtweg/jenkins:/var/lib/jenkins \
  -v ~/schlechtweg/sonarqube/conf:/var/lib/sonarqube-6.4/conf \
  -v ~/schlechtweg/sonarqube/data:/var/lib/sonarqube-6.4/data \
  --name insizaJenkins \
  schlechtweg/jenkins-nodejs