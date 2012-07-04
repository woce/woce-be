#!/bin/sh
cp /srv/share/LunaSysMgr ./
cd woce-build
make custom
cp packages/sysmgr/luna-sysmgr/build/woce/armv7-stage/release-topaz/LunaSysMgr /srv/share/
