#!/bin/bash

ongoingpomodoroseries=`grep rest_break ${HOME}/.workrave/state | cut -d ' ' -f 3`
pomodoroseries=7800 # 2h10
ongoingseriesperten=$(($ongoingpomodoroseries*10/$pomodoroseries))
restpomodoroseries=$(($pomodoroseries-$ongoingpomodoroseries))
restseriesperten=$(($restpomodoroseries*10/$pomodoroseries))

echo -n "{"
if [ $ongoingseriesperten -gt 0 ]; then
    printf "%0.s|" $(seq 1 $ongoingseriesperten)
fi
if [ $restseriesperten -gt 0 ]; then
    printf "%0.s " $(seq 1 $restseriesperten)
fi
echo -n "}"
