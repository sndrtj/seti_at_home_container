#!/bin/bash
set -e

# if a command was specified, we run that command. E.g. helpful when we do
# docker run -it <container> /bin/bash
if [ "${1}" ]
then
  exec "$@"
# otherwise we attempt to run boinc.
else
  if [ "${SETI_AT_HOME_KEY}" ]
  then
    echo '<account><master_url>http://setiathome.berkeley.edu/</master_url><authenticator>'"${SETI_AT_HOME_KEY}"'</authenticator></account>' > /var/lib/boinc-client/account_setiathome.berkeley.edu.xml
    boinc --dir /var/lib/boinc-client
  else
    echo 'Must set the authentication key with -e SETI_AT_HOME_KEY=<token>'
    exit 1
  fi
fi