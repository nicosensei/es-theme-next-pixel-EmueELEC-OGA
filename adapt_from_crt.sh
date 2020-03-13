mv favorites auto-favorites
cp -rf default setup
cp -rf imageviewer auto-lastplayed
find . -name "background.png" | while read f; do mogrify -verbose -gravity center -crop 1024x683+0+0 $f; done
find . -name "background_legacy.jpg" | while read f; do mogrify -verbose -gravity center -crop 1024x683+0+0 $f; done
find . -name "background_wheel.jpg" | while read f; do mogrify -verbose -gravity center -crop 1024x683+0+0 $f; done
find . -name "background_gamelist_*" | while read f; do mogrify -verbose -gravity center -crop x683+0+0 $f; done
mogrify -verbose -gravity center -crop x683+0+0 data/arts/gamelist_b*.png
mogrify -verbose -gravity center -crop x683+0+0 data/arts/system_carousel_vertical_wheel_b*.png

find data/arts -name "game_*.svg" | while read f; do inkscape -z -e "$f".png -w 32 -h 32 $f; done
rename 's/\.svg\.png/.png/' data/arts/*.svg.png
sed -i 's/\.svg/.png/' data/gamelistviews/common_info.xml

sed -i 's/<sound/<!--sound/' theme.xml 
sed -i 's#</sound>#</sound-->#' theme.xml
