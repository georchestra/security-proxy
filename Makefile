docker-build:
	mvn clean package docker:build -DdockerImageTags=${BTAG} -Pdocker -DskipTests

war-build:
	mvn clean install -DskipTests

deb:
	mvn package deb:package -PdebianPackage -DskipTests ${DEPLOY_OPTS}