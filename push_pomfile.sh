#!/bin/sh

AGENT_POM_FILE='pom_agent.xml'
echo "check!!!"
echo ${BuildVariables.AGENT_OLD_VERSION}
echo ${BuildVariables.AGENT_NEW_VERSION}
echo ${BuildVariables.GITHUB_USER_NAME}
echo ${BuildVariables.GITHUB_USER_EMAIL}
echo ${GITHUB_USER_NAME}
echo ${GITHUB_USER_EMAIL}
echo "check!!!"

git config --global user.name ${GITHUB_USER_NAME}
git config --global user.email ${GITHUB_USER_EMAIL}
git commit -m "${BuildVariables.AGENT_OLD_VERSION} -> ${BuildVariables.AGENT_NEW_VERSION}." ${AGENT_POM_FILE}
git push origin main

exit 0

