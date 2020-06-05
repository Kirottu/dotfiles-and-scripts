#!/bin/bash

declare -a PARTLIST
PARTLIST=('Temp')

for PARTITION in $(df -h); do
	MOUNT=$(echo $PARTITION | awk '{print $6}')
	case $MOUNT in
		"/"	) ROOTPART=$MOUNT && SELPART='$ROOTPART';;
		"/home" ) HOMEPART=$MOUNT && SELPART='$HOMEPART';;
		"/etc"  ) ETCPART=$MOUNTT && SELPART='$ETCPART';;
		"/usr"	) USRPART=$MOUNTT && SELPART='$USRPART';;
		"/var"  ) VARPART=$MOUNTT && SELPART='$VARPART';;
		"/root" ) ROOTUSRPART=$MOUNT && SELPART='$ROOTUSRPART';;
		"/opt"  ) OPTPART=$MOUNT && SELPART='$OPTPART';;
	esac
	PARTLIST=("${PARTLIST[@]}" "$SELPART")
done

for PARTITION in ${PARTLIST[*]}; do
	echo $PARTITION
done
