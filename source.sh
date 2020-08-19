# NOTE: please edit your own ./custom.sh
# unless you'd like to do a pull-request upstream to dourbit/dots

# holy-one should be on, or holy-env won't be found
# skip the extra check because that's very unlikely
# holy-you will be tested through holy-env and also
# the 1 asks it to be verbose about holy-you status
holy-env "$HOLY_LEAD" 1 || return 1


# NOTE: this should be kept last
if [ -f ${DOTS_HOME}/custom.sh ]; then
  . ${DOTS_HOME}/custom.sh
fi
