#!/bin/sh

AGENT_POM_FILE='pom_agent.xml'
BACKUP_POM_FILE_NAME='pom_agent.xml.versionsBackup'

CURRENT_VERSION=`mvn -f ${AGENT_POM_FILE} dependency:list | grep contrast | awk -F: '{print $4}'`

#mvn versions:display-dependency-updates -f ${AGENT_POM_FILE}
rm -f ${BACKUP_POM_FILE_NAME}
mvn versions:use-latest-versions -f ${AGENT_POM_FILE} > /dev/null 2>&1
if [ ! -e ${BACKUP_POM_FILE_NAME} ]; then
    exit 1
fi
mv ${BACKUP_POM_FILE_NAME} pom_agent_${CURRENT_VERSION}.xml
NEWER_VERSION=`mvn -f ${AGENT_POM_FILE} dependency:list | grep contrast | awk -F: '{print $4}'`

echo "${CURRENT_VERSION} -> ${NEWER_VERSION}"

exit 0

