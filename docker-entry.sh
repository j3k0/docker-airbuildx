#!/bin/bash
if test -f "/home/air/bin/$1" ; then
    su air -c "Xvfb :0" &
    sleep 1
    export DISPLAY=:0
    su air -c "/home/air/bin/$*"
    su air -c "killall Xvfb"
else
    exec "$@"
fi
