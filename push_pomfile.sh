#!/bin/sh

AGENT_POM_FILE='pom_agent.xml'
echo "check!!!"
echo ${AGENT_OLD_VERSION}
echo ${AGENT_NEW_VERSION}
echo ${GITHUB_USER_NAME}
echo ${GITHUB_USER_EMAIL}
echo "check!!!"

git config --global user.name ${GITHUB_USER_NAME}
git config --global user.email ${GITHUB_USER_EMAIL}
#git commit -m "${AGENT_OLD_VERSION} -> ${AGENT_NEW_VERSION}." ${AGENT_POM_FILE}
git commit -m "update from codebuild." ${AGENT_POM_FILE}
git push origin main

exit 0

