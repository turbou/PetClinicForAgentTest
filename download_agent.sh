#!/bin/sh

AGENT_POM_FILE='pom_agent.xml'
echo "check!!!"
echo ${BuildVariables.AGENT_OLD_VERSION}
echo ${BuildVariables.AGENT_NEW_VERSION}
echo "check!!!"

mvn dependency:copy-dependencies -f ${AGENT_POM_FILE}

exit 0

