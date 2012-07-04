#!/bin/sh
rsync -tr --delete /srv/share/LunaSysMgr .
cd ./woce-build
make custom
rsync ./packages/sysmgr/luna-sysmgr/build/custom/armv7-stage/release-topaz/ /srv/share/release-topaz
