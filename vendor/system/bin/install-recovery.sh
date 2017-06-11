#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9162752 f6abcb63edb387b6024179c29d5ae46fcc9e5083 6641664 84af9ed119be862f3a684c719ed9b55a9fa643ff
fi

if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:9162752:f6abcb63edb387b6024179c29d5ae46fcc9e5083; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:6641664:84af9ed119be862f3a684c719ed9b55a9fa643ff EMMC:/dev/block/bootdevice/by-name/recovery f6abcb63edb387b6024179c29d5ae46fcc9e5083 9162752 84af9ed119be862f3a684c719ed9b55a9fa643ff:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
