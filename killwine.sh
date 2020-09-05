#!/bin/bash

pids=$(
    ls -l /proc/*/exe 2>/dev/null |
    grep -E 'wine(64)?-preloader|wineserver|winedevice.exe' |
    perl -pe 's;^.*/proc/(\d+)/exe.*$;$1;g;'
)

if ((${#pids})); then
    echo $pids
    kill $pids
    
    sleep 1
    
    pids=$(
        ls -l /proc/*/exe 2>/dev/null |
        grep -E 'wine(64)?-preloader|wineserver|winedevice.exe' |
        perl -pe 's;^.*/proc/(\d+)/exe.*$;$1;g;'
    )
    
    if ((${#pids})); then
        kill -9 $pids
    fi
fi
