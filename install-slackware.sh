#!/bin/bash

set -e

DESTDIR=/usr/local/asus_touchpad_numpad-driver

mkdir -p $DESTDIR/numpad_layouts
install asus_touchpad.py $DESTDIR
install -t $DESTDIR/numpad_layouts numpad_layouts/*.py

echo "Installation completed. To use the numpad, add the line:"
echo
echo "/sbin/modprobe i2c-dev"
echo
echo "to /etc/rc.d/rc.modules.local and:"
echo
echo "/usr/local/asus_touchpad_numpad-driver/asus_touchpad.py ux425ea 6 &"
echo
echo "to /etc/rc.d/rc.local"
