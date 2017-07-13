echo "in $0"
#Author = Art_Chen
OUT_DIR=/home/c/flyme/devices/hm/out/merged_target_files
#FLYME_DIR=$OUT_DIR/DATA/media/flyme
DEV_DIR=/home/c/flyme/devices/hm
cd $OUT_DIR
echo "Delete $OUT_DIR/DATA"
rm -rf DATA/
echo "create dir DATA/"
mkdir -vp DATA/
echo "move some app into data"
mkdir -vp $OUT_DIR/DATA/sys-priv-app/IflytekSpeechService
#mkdir -vp $FLYME_DIR/app/Painter
#mkdir -vp $FLYME_DIR/app/Life
#mkdir -vp $FLYME_DIR/app/Video
#mkdir -vp $FLYME_DIR/app/MzInput
#mkdir -vp $FLYME_DIR/app/Music
#mkdir -vp $FLYME_DIR/app
mv -vf $OUT_DIR/SYSTEM/app/IflytekSpeechService/ $OUT_DIR/DATA/sys-priv-app/
#mv -vf $OUT_DIR/SYSTEM/app/Painter/ $OUT_DIR/DATA/sys-priv-app
#mv -vf $OUT_DIR/SYSTEM/priv-app/Life/ $FLYME_DIR/app/
#mv -vf $OUT_DIR/SYSTEM/priv-app/Video/ $FLYME_DIR/app/
#mv -vf $OUT_DIR/SYSTEM/priv-app/Music/ $FLYME_DIR/app/
#mv -vf $OUT_DIR/SYSTEM/priv-app/MzInput/ $FLYME_DIR/app/
mv -vf $OUT_DIR/SYSTEM/priv-app/* $OUT_DIR/DATA/sys-priv-app
echo "move system font into data"
#mv -vf $OUT_DIR/SYSTEM/fonts/ $OUT_DIR/DATA/sys-fonts
#mv -vf $OUT_DIR/SYSTEM/customizecenter/ $OUT_DIR/DATA/sys-customizecenter
#mv -vf $OUT_DIR/SYSTEM/vendor/ $OUT_DIR/DATA/sys-vendor
echo "overlay"
#cp -vrf $DEV_DIR/overlay/data/app $OUT_DIR/DATA/app
echo "remove Nfc"
rm -rf $OUT_DIR/SYSTEM/app/NfcNci
rm -rf $OUT_DIR/SYSTEM/priv-app/Tag
rm -rf $OUT_DIR/SYSTEM/lib/*nfc*
rm -rf $OUT_DIR/SYSTEM/etc/*nfc*
rm -rf $OUT_DIR/SYSTEM/etc/permissions/*nfc*

