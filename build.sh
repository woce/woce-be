#!/bin/sh
rm -rf ./LunaSysMgr
cp -r /srv/share/LunaSysMgr ./
cd woce-build
make custom
mkdir -p /srv/share/build
rm -rf /srv/share/release-topaz
cp -r packages/sysmgr/luna-sysmgr/build/woce/armv7-stage/release-topaz/ /srv/share/
rm -rf ./LunaSysMgr