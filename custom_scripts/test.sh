#!/bin/bash
line="this is a command;this is a_pattern"
#COMMAND=${line%_*}
PATTERN=${line#*_}
echo $COMMAND
echo $PATTERN
