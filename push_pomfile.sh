#!/bin/sh

AGENT_POM_FILE='pom_agent.xml'
echo "check!!!"
echo ${AGENT_OLD_VERSION}
echo ${AGENT_NEW_VERSION}
echo "check!!!"

git commit -m "${AGENT_OLD_VERSION} -> ${AGENT_NEW_VERSION}." ${AGENT_POM_FILE}
git push origin main

exit 0

