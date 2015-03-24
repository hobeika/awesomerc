#!/bin/bash
#
# Plays the imperial march using the PC speaker.
#
# Version 0.2 by Luinix <luinix at gmail dot com>
#
# This software is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this package; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
#

c=261
d=294
e=329
f=349
g=391
gS=415
a=440
aS=455
b=466
cH=523
cSH=554
dH=587
dSH=622
eH=659
fH=698
fSH=740
gH=784
gSH=830
aH=880

function showhelp {
    cat << EOF
Plays the imperial march through the PC speaker.

USAGE:

-r, --repeat Plays the imperial march in repeat mode

In case you hear no sound, try modprobing the pcskpr module:

sudo modprobe pcspkr
EOF
}

function play {
    beep -f $a -l 500 -n -f $a -l 500 -n -f $a -l 500 -n -f $f -l 350 -n -f $cH -l 150 -n -f $a -l 500 -n -f $f -l 350 -n -f $cH -l 150 -n -f $a -l 1000 -n -f $eH -l 500 -n -f $eH -l 500 -n -f $eH -l 500 -n -f $fH -l 350 -n -f $cH -l 150 -n -f $gS -l 500 -n -f $f -l 350 -n -f $cH -l 150 -n -f $a -l 1000 -n -f $aH -l 500 -n -f $a -l 350 -n -f $a -l 150 -n -f $aH -l 500 -n -f $gSH -l 250 -n -f $gH -l 250 -n -f $fSH -l 125 -n -f $fH -l 125 -n -f $fSH -l 250 -n -f 1 -l 250 -n -f $aS -l 250 -n -f $dSH -l 500 -n -f $dH -l 250 -n -f $cSH -l 250 -n -f $cH -l 125 -n -f $b -l 125 -n -f $cH -l 250 -n -f 1 -l 250 -n -f $f -l 125 -n -f $gS -l 500 -n -f $f -l 375 -n -f $a -l 125 -n -f $cH -l 500 -n -f $a -l 375 -n -f $cH -l 125 -n -f $eH -l 1000 -n -f $aH -l 500 -n -f $a -l 350 -n -f $a -l 150 -n -f $aH -l 500 -n -f $gSH -l 250 -n -f $gH -l 250 -n -f $fSH -l 125 -n -f $fH -l 125 -n -f $fSH -l 250 -n -f 1 -l 250 -n -f $aS -l 250 -n -f $dSH -l 500 -n -f $dH -l 250 -n -f $cSH -l 250 -n -f $cH -l 125 -n -f $b -l 125 -n -f $cH -l 250 -n -f 1 -l 250 -n -f $f -l 250 -n -f $gS -l 500 -n -f $f -l 375 -n -f $cH -l 125 -n -f $a -l 500 -n -f $f -l 375 -n -f $c -l 125 -n -f $a -l 1000
    sleep 0.50
}

if [ $# -gt 1 ]; then
    showhelp
    exit 1
else
    case $1 in
        -r|--repeat)
            while true; do
                play
            done
            ;;
        *)
            showhelp
            exit 1
            ;;
    esac
fi

play

exit 0

