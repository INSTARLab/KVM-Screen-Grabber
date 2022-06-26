# KVM Screen Grabber<br>
This Program Grabs a ScreenShot from a Pi-KVM Machine, Saves it, and Syncs it to Cloud Storage<br>

We still need to modify the code to transfer the saved screenshot using One Drive by following the tutorial found here: <br>
https://developer.microsoft.com/en-us/onedrive<br>

The sample code they are showing us to use looks like this:<br>
`curl https://graph.microsoft.com/v1.0/me/drive/root:/document1.docx:/content -X PUT -d @document1.docx -H "Authorization: bearer access_token_here"`<br>

We would probably modify that to something like this:<br>
`curl $screenGrabName -X PUT -d @document1.docx -H "Authorization: bearer access_token_here"`

We want to store this in OneDrive in an appropriate folder so our Team Leads can view the screenshot to ensure staff are performing their tasks appropriately.<br><br>

There are some other existing applications we may consider using, such as RClone: https://rclone.org/onedrive/


 
 
