# jenkins-docker nodejs & php

```shell=
docker build -t myjenkins . --no-cache
```

```shell=
docker run -d --name jenkins -p 9487:8080 -u root -e JAVA_OPTS=-Dorg.apache.commons.jelly.tags.fmt.timeZone=Asia/Taipei -v /var/jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock --restart=always myjenkins
```
