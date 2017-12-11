#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 25073664 1b6ca072b2a2ab79f05f9a84a69f4500ee8f962c 20973568 3b52f9dcd05b610f40442dd7f2288c5323cf159c
fi
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:25073664:1b6ca072b2a2ab79f05f9a84a69f4500ee8f962c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:20973568:3b52f9dcd05b610f40442dd7f2288c5323cf159c EMMC:/dev/block/bootdevice/by-name/recovery 1b6ca072b2a2ab79f05f9a84a69f4500ee8f962c 25073664 3b52f9dcd05b610f40442dd7f2288c5323cf159c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
