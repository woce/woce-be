#!/bin/sh
cp /srv/share/LunaSysMgr ./
cd woce-build
make custom
mkdir -p /srv/share/build
cp -r packages/sysmgr/luna-sysmgr/build/woce/armv7-stage/release-topaz/ /srv/share/
rm -rf ./LunaSysMgr