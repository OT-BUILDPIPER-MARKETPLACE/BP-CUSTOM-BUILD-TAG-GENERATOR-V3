#!/bin/bash
source /opt/buildpiper/shell-functions/functions.sh
source /opt/buildpiper/shell-functions/log-functions.sh
source /opt/buildpiper/shell-functions/str-functions.sh
source /opt/buildpiper/shell-functions/file-functions.sh
source /opt/buildpiper/shell-functions/aws-functions.sh

TAG_FILE="data.properties"

CODEBASE_LOCATION="${WORKSPACE}"/"${CODEBASE_DIR}"
logInfoMessage "I'll create build tag at  [$WORKSPACE] in data.properties file"
sleep  $SLEEP_DURATION
cd  "${WORKSPACE}"

TIMESTAMP=$(date +"%m-%d-%y--%H:%M:%S")
echo "${TIMESTAMP}" >> "${TAG_FILE}" 
echo "!----------------------------------------------TAG------------------------------------------------------------!"
cat "{TAG_FILE}"
TASK_STATUS=?

saveTaskStatus ${TASK_STATUS} ${ACTIVITY_SUB_TASK_CODE}