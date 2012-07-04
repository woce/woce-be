#!/bin/sh
rm -rf ./LunaSysMgr
cp -r /srv/share/LunaSysMgr ./
cd ./woce-build
make custom
cd ../
rm -rf /srv/share/LunaSysMgr
cp -r ./LunaSysMgr /srv/share/LunaSysMgr
rm -rf ./LunaSysMgr