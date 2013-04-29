#!/bin/bash -e

CONFIG="build-config"
FTPCONFIG="ftp-config"
TEMP="temp-config"
#Let's check to see if build-config exists
if [ ! -e $CONFIG ]; then (
echo -n "Enter DEVICE'S BOARD NAME (LOWERCASE INPUT ONLY) and press [ENTER]: "
read -r DEVICE
echo -n "Clobber source after lunch?[Y/y to enable]: "
read -n1 CLOBBER
echo
echo -n "Enable Auto FTP Upload?[Y/y to enable]: "
read -n1 FTPYN
echo "DEVICE=$DEVICE">> "$CONFIG"
echo "CLOBBER=$CLOBBER">> "$CONFIG"
echo "FTPYN=$FTPYN" >> "$CONFIG"
(if [[ "$FTPYN" == "Y" || "$FTPYN" == "y" ]]; then
echo -n "Enter FTP USERNAME and press [ENTER]: "
read -r USERNAME
echo -n "Enter FTP PASSWORD and press [ENTER]: "
read -r PASSWORD
echo -n "Enter SERVER DOMAIN and press [ENTER]: "
read -r SERVER
echo -n "Enter FTP Destination directory(leave blank for root) and press [ENTER]: "
read -r FTPHOMEDIR
echo "USERNAME=$USERNAME" >> "$FTPCONFIG"
echo "PASSWORD=$PASSWORD">> "$FTPCONFIG"
echo "SERVER=$SERVER">> "$FTPCONFIG"
echo "FTPHOMEDIR=$FTPHOMEDIR">> "$FTPCONFIG"
fi)
)
#And if it does we will source it for current values
else
(
. $CONFIG
. $FTPCONFIG
echo "Current device:$DEVICE Auto-Clobber:$CLOBBER FTP Auto Upload:$FTPYN to $SERVER"
term="/dev/$(ps -p$$ -o tty="")"
exec < $term
#Just cleared STDIN to allow proper values to be placed in build-config
echo -n "Change these values?[Y/y/N/n]: "
read -n1 MODIFY
echo
if [[ "$MODIFY" == "Y" || "$MODIFY" == "y" ]]; then
echo -n "Enter NEW DEVICE'S BOARD NAME (LOWERCASE INPUT ONLY) and press [ENTER]: "
read -r DEVICE
echo -n "Clobber source after lunch?[Y/y to enable]: "
read -n1 CLOBBER
echo
echo -n "Enable Auto FTP Upload?[Y/y to enable]: "
read -n1 FTPYN
echo
echo "DEVICE=$DEVICE"> "$CONFIG"
echo "CLOBBER=$CLOBBER">> "$CONFIG"
echo "FTPYN=$FTPYN" >> "$CONFIG"
(if [[ "$FTPYN" == "Y" || "$FTPYN" == "y" ]]; then
(if [ -e $FTPCONFIG ]; then (
echo "FTP configuration is as follows:"
cat $FTPCONFIG 
echo "If you wish to change these edit/delete ftp-config and run this script again")else(
echo -n "Enter FTP USERNAME and press [ENTER]: "
read -r USERNAME
echo -n "Enter FTP PASSWORD and press [ENTER]: "
read -r PASSWORD
echo -n "Enter SERVER DOMAIN and press [ENTER]: "
read -r SERVER
echo -n "Enter FTP Destination directory(leave blank for root) and press [ENTER]: "
read -r FTPHOMEDIR
echo "USERNAME=$USERNAME" >> "$FTPCONFIG"
echo "PASSWORD=$PASSWORD">> "$FTPCONFIG"
echo "SERVER=$SERVER">> "$FTPCONFIG"
echo "FTPHOMEDIR=$FTPHOMEDIR">> "$FTPCONFIG")fi)fi)
fi)
fi


DIR1="${BASH_SOURCE[0]}"
while [ -h "$DIR1" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$DIR1" )" && pwd )"
  DIR1="$(readlink "$DIR1")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$DIR1" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
REPODIR="$( cd -P "$( dirname "$DIR1" )" && pwd )"
cat "$CONFIG">> "$TEMP"
rm $CONFIG
grep DEVICE= "$TEMP" > "$CONFIG"
grep CLOBBER= "$TEMP" >> "$CONFIG"
grep FTPYN= "$TEMP" >> "$CONFIG"
echo "REPODIR=$REPODIR" >> "$CONFIG"
grep Vanir_Version= "$REPODIR/vendor/vanir/products/common.mk" >>$CONFIG
grep 'PRODUCT_NAME :=' "$REPODIR/vendor/vanir/products/common.mk" >>$CONFIG
sed -i 's/PRODUCT_NAME := /ROMNAME=/g' $CONFIG >> $CONFIG
echo 'PICKS=". picks.sh"' >> "$CONFIG"
echo 'FTP=". ftp.sh"' >> "$CONFIG"
echo 'DATE=$(date +".%m%d%y")' >> "$CONFIG"
echo 'SOURCE="$REPODIR"/"$ROMNAME"' >> "$CONFIG"
echo 'ZIPDIR="/out/target/product"' >> "$CONFIG"
echo 'TARGET_DIR="$REPODIR""$ZIPDIR""/""$DEVICE""/"' >> "$CONFIG"
echo 'VERSION="$ROMNAME"_"$DEVICE"_"$Vanir_Version$DATE"' >> "$CONFIG"
echo 'SITEHTML="index.html"' >> "$CONFIG"
echo 'TEMPHTML="temp"' >> "$CONFIG"
echo 'FILE="$VERSION.zip"' >> "$CONFIG"
echo 'MD5="$VERSION.zip.md5sum"' >> "$CONFIG"
echo 'FTPTARGETDIR="/$DEVICE/$ROMNAME/"' >> "$CONFIG"
rm $TEMP
#Clearing STDIN again as a failsafe
term="/dev/$(ps -p$$ -o tty="")"
exec < $term
. $CONFIG
echo
echo -n "Enter -j flag sync number and press [ENTER]: "
read SYNC

echo -n "Enter -j flag brunch number and press [ENTER]: "
read BRUNCH

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
cd $REPODIR
if [[ "$CLOBBER" == "Y" || "$CLOBBER" == "y" ]]; then
make clobber
echo "All clean for the next build"
fi
echo "#------- COMPLETED -------#"
echo "Press any key to continue... or [X/x] to Exit..."
read -s -n 1 any_key
if [ "$any_key" = x ] || [ "$any_key" = X ]
then
exit
fi
