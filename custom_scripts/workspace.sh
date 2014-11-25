#!/bin/bash

## Create new eclipse workspace and copy the settings from the old workspace
## Tomas Kramar, kramar.tomas@gmail.com, 2008
##
## This code is free, you may do whatever you want with it.

function die {
echo $1
exit 1
}

OLD_WORKSPACE="$ECLIPSE_WS_HOME/template";
if [ "$#" = "1" ]; then
	NEW_WORKSPACE="$ECLIPSE_WS_HOME/$1";
fi

if [ "$#" = "0" -o "$#" -gt "1" ]; then
	echo usage: $0 new-workspace
	exit 1
fi

if [[ ! ( ( -d "$OLD_WORKSPACE" ) && ( -r "$OLD_WORKSPACE" ) ) ]]; then
	echo $OLD_WORKSPACE is not a readable directory
	exit 1
fi

WORKSPACE_DIR=`dirname $NEW_WORKSPACE`

if [[ ! ( ( -d "$WORKSPACE_DIR" ) && ( -w "$WORKSPACE_DIR" ) ) ]]; then
	echo $WORKSPACE_DIR is not a writable directory
	exit 1
fi

if [[ ! ( -d "$NEW_WORKSPACE" )  ]]; then
   mkdir -p $NEW_WORKSPACE || die Could not create directory $NEW_WORKSPACE
   mkdir -p $NEW_WORKSPACE/.metadata/.plugins/org.eclipse.core.runtime/ || die Could not create eclipse settings directory
   cp -R $OLD_WORKSPACE/.metadata/.plugins/org.eclipse.core.runtime/.settings/ $NEW_WORKSPACE/.metadata/.plugins/org.eclipse.core.runtime/ || die Could not copy old settings
   
   mkdir -p $NEW_WORKSPACE/.metadata/.plugins/org.eclipse.ui.workbench/ || die Could not create eclipse UI settings directory
   cp $OLD_WORKSPACE/.metadata/.plugins/org.eclipse.ui.workbench/workbench.xml $NEW_WORKSPACE/.metadata/.plugins/org.eclipse.ui.workbench/ || die Could not copy old UI settings

   mkdir -p $NEW_WORKSPACE/.metadata/.plugins/org.eclipse.debug.core/.launches
   cp -R $OLD_WORKSPACE/.metadata/.plugins/org.eclipse.debug.core/.launches $NEW_WORKSPACE/.metadata/.plugins/org.eclipse.debug.core/ || die Could not copy old launches

   echo New workspace created. 
else
   echo Using existing workspace. 
fi


#Now start your Eclipse and point it to the $NEW_WORKSPACE workspace
STS -data $NEW_WORKSPACE &
