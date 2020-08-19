# NOTE: please edit your own ./custom.sh
# unless you'd like to do a pull-request upstream to dourbit/dots

# holy-one should be on, or holy-you won't be found
# skip the extra check because that's very unlikely
holy-you 1 || return 1


# NOTE: this should be kept last
if [ -f ${DOTS_HOME}/custom.sh ]; then
  . ${DOTS_HOME}/custom.sh
fi
