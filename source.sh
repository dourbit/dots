# NOTE: please edit your own ./custom.sh (sourced if created)
# unless you'd like to do a pull-request upstream to dourbit/dots

#
export THIS_HOME="$DOTS_HOME"
# see it unset at the end of this source.sh
# exists for more concise calls of holy-dot
# thus this-that needs no path arg, for the time being...
# only ever an issue when sourcing from the outside, e.g. ~/.bashrc, etc.
# essential for code portability between blesstheos and dots or its forks -
# it is an indicator of bootstrapping in progress...

# holy-one should be on, or holy-sort won't be found
# skip the extra check because that is very unlikely
#
# holy-you will be tested through holy-sort and also
# the 1 asks it to be verbose about holy-you status
# it exports $LEAD_HOME and $NEXT_HOME upon success
holy-sort 1 || {
  # clean-up here
  unset THIS_HOME
  return 1
}


# NOTE: this should be kept last
if [ -s ${DOTS_HOME}/custom.sh ]; then
  . ${DOTS_HOME}/custom.sh
fi

# bootstrapping is done
unset THIS_HOME
