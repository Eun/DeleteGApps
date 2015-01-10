# This script should delete all Google Apps
# Including Play Store, YouTube, Talk etc.
# It requires superuser!
APPS=(
	BackupRestoreConfirmation
	Books
	CalendarGoogle
	Chrome
	CloudPrint
	Currents
	com.android.chrome-1
	PlayServices
	Drive
	Earth
	GMS_Maps
	Gmail
	GmsCore
	GoogleBackupTransport
	GoogleCalendarSyncAdapter
	GoogleContactsSyncAdapter
	GoogleEars
	GoogleFeedback
	GoogleLoginService
	GoogleOneTimeInitializer
	GooglePartnerSetup
	GoogleQuickSearchBox
	GoogleServicesFramework
	GoogleTTS
	Hangouts
	Keep
	Magazines
	Maps
	MediaUploader
	Music2
	Newstand
	Phonesky
	PlayGames
	PlusOne
	Street
	Talk
	Velvet
	Videos
	VoicePlus
	Wallet
	YouTube
)

## DELETE APPS NOW ##

if [ "$USER_ID" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
echo "Remounting /system..."
mount -o remount,rw /system
echo "Deleteing..."
for i in ${APPS[@]}; do
	rm -rf /system/app/$i.*
	rm -rf /system/priv-app/$i.*
done
echo "Cleaning Cache..."
rm -rf /data/dalvik-cache
rm -rf /cache/dalvik-cache
echo "Rebooting..."
reboot