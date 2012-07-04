#!/bin/sh
mkdir -p ./LunaSysMgr
rsync -trv --delete /srv/share/LunaSysMgr ./
cd ./woce-build
make custom
cd ../
mkdir -p /srv/share/release-topaz
rsync -trv --delete ./woce-build/packages/sysmgr/luna-sysmgr/build/custom/armv7-stage/release-topaz/ /srv/share/release-topaz
rsync -trv --delete ./LunaSysMgr /srv/share/