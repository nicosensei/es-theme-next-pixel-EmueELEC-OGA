#!/bin/sh

system=$1

find $system -name "logo.svg" | while read f; do inkscape -z -e "$f".png -w 512 $f; done
find $system -name "logo.svg.png" | while read f; do rename 's/\.svg\.png/.png/' $f; done

find $system -name "logo_right.svg" | while read f; do inkscape -z -e "$f".png -w 512 $f; done
find $system -name "logo_right.svg.png" | while read f; do rename 's/\.svg\.png/.png/' $f; done

find $system -name "controller.svg" | while read f; do inkscape -z -e "$f".png -w 256 $f; done
find $system -name "controller.svg.png" | while read f; do rename 's/\.svg\.png/.png/' $f; done

find $system -name "console.svg" | while read f; do inkscape -z -e "$f".png -w 256 $f; done
find $system -name "console.svg.png" | while read f; do rename 's/\.svg\.png/.png/' $f; done

find $system -name "icon_*.svg" | while read f; do inkscape -z -e "$f".png -w 64 $f; done
find $system -name "icon_*.svg.png" | while read f; do rename 's/\.svg\.png/.png/' $f; done

find $system -name "*.svg" | while read f; do rm -vf "$f"; done
