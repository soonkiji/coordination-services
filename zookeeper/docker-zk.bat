@echo off
set imageName=zookeeper
set containerName=zk
call docker-env.bat
set D1=data
set D2=datalog
echo docker run -d --name %containerName% --restart=always -p 2181:2181 -v %DOCKER_VOLUMES%/%containerName%/%D1%:/%D1% -v %DOCKER_VOLUMES%/%containerName%/%D2%:/%D2% %* %imageName%
docker run -d --name %containerName% --restart=always -p 2181:2181 -v %DOCKER_VOLUMES%/%containerName%/%D1%:/%D1% -v %DOCKER_VOLUMES%/%containerName%/%D2%:/%D2% %* %imageName%
docker start %containerName% > NUL 2>&1
