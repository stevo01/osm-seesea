#!/bin/bash

# set -x

STOP_CONT="no"

# handler for term signal
function sighandler_TERM() {
    echo "signal SIGTERM received\n"
    /data/geoserver-2.19.2/bin/shutdown.sh
    STOP_CONT="yes"
}


if [ "$#" -ne 1 ]; then
    echo "usage: <run>"
    echo "commands:"
    echo "    run: Runs Geoserver"
    exit 1
fi

if [ "$1" = "run" ]; then

    DATADIR="/data/seesea"
    if [ -d "$DATADIR" ]; then
        echo "skip svn co procedure"
    else
        echo "svn checkout seesea-code"
        cd /data/
        # svn checkout https://svn.code.sf.net/p/seesea/code/trunk seesea-code
    fi

    echo "wait for terminate signal"
    while [  "$STOP_CONT" = "no"  ] ; do
      sleep 1
    done

    exit 0
fi

echo "invalid command"
exit 1
