#!/bin/bash
 
# The following lines have been added by the
# application server integration wizard of JProfiler
 
CATALINA_OPTS="-agentpath:/home/iverhun/programs/jprofiler6/bin/linux-x86/libjprofilerti.so=port=8849 $CATALINA_OPTS"
export CATALINA_OPTS
 
# end of modifications
 
sh catalina.sh jpda run
