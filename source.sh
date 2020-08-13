#!/usr/bin/env bash

# NOTE: please edit your own ./custom.sh
# unless you'd like to do a pull-request upstream to dourbit/dots

if [ -z "$DOTS_HOME" ]; then
  echo "\$DOTS_HOME not set!"
elif ! [ -d "$DOTS_HOME" ]; then
  echo "\$DOTS_HOME dir of $DOTS_HOME is Not Found!"
fi


# NOTE: this should be kept last
if [ -f ${DOTS_HOME}/custom.sh ]; then
  . ${DOTS_HOME}/custom.sh
fi
