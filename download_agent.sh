#!/bin/sh

AGENT_POM_FILE='pom_agent.xml'
echo "check!!!"
echo ${AGENT_OLD_VERSION}
echo "check!!!"

mvn dependency:copy-dependencies -f ${AGENT_POM_FILE}

exit 0

