#!/bin/bash -e
. cron-config
. build-config
. ftp-config
. scp-config
echo "Starting with a fresh source"
cd $REPODIR
repo sync -j$SYNC
repo forall -pc git log --reverse --since=1.week.ago > changelog
#Remove hash from next line to enable Auto merge of cherry-picks
#$PICKS
cd $REPODIR
echo "Starting to build $ROMNAME for $DEVICE"
echo "Please be patient"
. build/envsetup.sh
lunch "$ROMNAME"_"$DEVICE"-userdebug -j$BRUNCH
mka bacon -j$BRUNCH
mkdir -p $REPODIR/$DEVICE
cp $TARGET_DIR$FILE $REPODIR/$DEVICE/"$ROMNAME"_"$DEVICE""$DATE".zip
echo "Done building "$ROMNAME" "$DEVICE" "$Vanir_Version$DATE""
echo "Your local copy is in $REPODIR/$DEVICE"
if [[ "$FTPYN" == "Y" || "$FTPYN" == "y" ]]; then(
. ftp-config
echo "Uploading the following"
echo "$ROMNAME"_"$DEVICE""$DATE"".zip"
echo "$ROMNAME"_"$DEVICE""$DATE"".md5"
echo "From"
echo $REPODIR/$DEVICE
cd $REPODIR/$DEVICE
md5sum "$ROMNAME"_"$DEVICE""$DATE".zip > "$ROMNAME"_"$DEVICE""$DATE".zip.md5
# login to ftp server and transfer file
ftp -n -i $SERVER <<EOF
user $USERNAME $PASSWORD
cd $FTPHOMEDIR$FTPTARGETDIR
binary
mput "$ROMNAME"_"$DEVICE""$DATE".zip.md5
mput "$ROMNAME"_"$DEVICE""$DATE".zip
quit
EOF
)fi
if [[ "$SCPYN" == "Y" || "$SCPYN" == "y" ]]; then(
. scp-config
echo "Uploading the following"
echo "$ROMNAME"_"$DEVICE""$DATE"".zip"
echo "$ROMNAME"_"$DEVICE""$DATE"".md5"
echo "From"
echo $REPODIR/$DEVICE
cd $REPODIR/$DEVICE
md5sum "$ROMNAME"_"$DEVICE""$DATE".zip > "$ROMNAME"_"$DEVICE""$DATE".zip.md5
# login to via scp and transfer file
scp $REPODIR/$DEVICE/"$ROMNAME"_"$DEVICE""$DATE".zip.md5 $USERNAME@$SERVER:$FTPHOMEDIR/$ROMNAME/"$ROMNAME"_"$DEVICE""$DATE".zip.md5
echo $SCPPASSWORD
scp $REPODIR/$DEVICE/"$ROMNAME"_"$DEVICE""$DATE".zip $USERNAME@$SERVER:$FTPHOMEDIR/$ROMNAME/"$ROMNAME"_"$DEVICE""$DATE".zip
echo $SCPPASSWORD
)fi
cd $REPODIR
make clobber
exit
