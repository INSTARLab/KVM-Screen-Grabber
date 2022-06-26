# KVM Screen Grabber
Grab an Image from a Pi-KVM and Sync it to Cloud Storage

Our goal is to take a screenshot every 10 minutes from Pi-KVM using the following command:
curl --unix-socket /run/kvmd/ustreamer.sock http://localhost/snapshot -o /tmp/screen.jpg

Then, transfer that saved screenshot using One Drive by following the tutorial found here: 
https://developer.microsoft.com/en-us/onedrive

The sample code they are showing us to use looks like this:
curl https://graph.microsoft.com/v1.0/me/drive/root:/document1.docx:/content -X PUT -d @document1.docx -H "Authorization: bearer access_token_here"

We would probably modify that to something like this:
curl /tmp/screen.jpg -X PUT -d @document1.docx -H "Authorization: bearer access_token_here"


We want to store this in OneDrive in an appropriate folder so our Team Leads can view the screenshot to ensure staff are performing their tasks appropriately.

There are some other existing applications we may consider using, such as RClone: https://rclone.org/onedrive/


Extra Tips:
We want to dynamically get the current Date & Current Time to make subfolders for our content organization. We also want the screen.jpg file to be renamed to the appropriate current time so screen.jpg becomes 0835pm.jpg and will sit inside the appropriate folder such at /Prime/PC1 where "Prime" is the Group and "PC1" is the name of the PC the KVM is attached to.

That might include code like the following:
var $currentDate = (find code)
curl --unix-socket /run/kvmd/ustreamer.sock http://localhost/snapshot  -X PUT -d @/Prime/PC1/$currentDate+.jpg -H "Authorization: bearer access_token_here"

 
 
The end result will be in OneDrive and look something like this:
/Prime/PC1/Jun26/0830pm.jpg
/Prime/PC1/Jun26/0840pm.jpg
/Prime/PC1/Jun26/0850pm.jpg
/Prime/PC1/Jun26/0900pm.jpg
