#!/bin/sh

APP_VERSION="CODEBUILD_TEST_$1"
ORG_ID="442311fd-c9d6-44a9-a00b-2b03db2d816c"
APP_ID="f17571b8-eb60-4767-81c7-230c6576fd47"
count=`curl -s -X GET "https://eval.contrastsecurity.com/Contrast/api/ng/${ORG_ID}/traces/${APP_ID}/ids?appVersionTags=${APP_VERSION}&severities=CRITICAL" \
        -H "Authorization: dHVyYm91QGkuc29mdGJhbmsuanA6TDBGUUZZN1JGRVBOQUI4RQ==" \
        -H "API-Key: EFhK6pIuD6mh5RX6YQ2iMOOavh9Mc52u" \
        | jq '[.traces[]] | length'`
echo $count
if [ $count -gt 0 ]; then
  exit 1
fi

exit 0

