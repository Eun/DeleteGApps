Delete GApps from your Android Device
=====================================
This script is designed to delete all Google Apps from your android device.  
If you want a clean device you can run this script to get rid of this bloatware.

**Note**:
**NO WARRANTY** - 
Use at your own risk, I am not responsible for bricking your device.

Prerequirements
===============
1. android dvice
2. superuser access
3. adb access to your device


Lets get started
================
1. Download the `delete_gapps.sh` script.
    
2. Transfer it to your device:  
    `adb push ~/Downloads/delete_gapps.sh /data/local/tmp/`

3. Run it:  
    `adb shell su -c "/data/local/tmp/delete_gapps.sh"`

4. Delete it:  
    `adb shell rm /data/local/tmp/delete_gapps.sh`

5. You are done


Contribution
============
1. Fork the project
2. Add the apk name to the list.
3. Pull request, comment the app details (What app?, Is this a new name?, etc.)
