#!/bin/bash
if test -f "/home/air/bin/$1" ; then
    su air -c "Xorg -noreset +extension GLX +extension RANDR +extension RENDER -logfile ./xorg.0.log -config /xorg.conf :0" &
    sleep 1
    export DISPLAY=:0
    su air -c "/home/air/bin/$*"
    su air -c "killall Xorg"
else
    exec "$@"
fi
