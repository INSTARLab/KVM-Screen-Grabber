# The Screen Grabber Command that takes a screenshot and then sends to Cloud
# Copyright (c) 2022 INSTAR LAB INC

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
# DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE
# OR OTHER DEALINGS IN THE SOFTWARE.

# Put Code Below this Line

# Overall Folder Name #
overallFolder = "screengrabs"

# Current Year #
currentYear = $date "+%m"

# Current Month #
currentMonth = $date "+%m"

# Current Day #
currentDay = $date "+%D"

# Current Time #
currentTime = $date +"%r"

# Check to see if a folder is already made for the current Day.
# If folder is not found, create one. 
if [ ! -d "/" $overallFolder "/" $currentYear "/" $currentMonth "/" $currentDay ]; then
  mkdir -p "/" $overallFolder "/" $currentYear "/" $currentMonth "/" $currentDay;
fi

# Type Team Here #
team = "Prime"

# Name for the file where we will save the current Screen Grab #
screenGrabName = $team "/" $currentYear "/" $currentMonth "/" $currentDay "/" $currentTime ".jpg"

# Run the Image Grabber #
curl --unix-socket /run/kvmd/ustreamer.sock http://localhost/snapshot -o $screenGrabName

# Place the Image into OneDrive #
# This code needs modified #
# Documentation available here: https://developer.microsoft.com/en-us/onedrive #
# curl https://graph.microsoft.com/v1.0/me/drive/root:/document1.docx:/content -X PUT -d @document1.docx -H "Authorization: bearer access_token_here"

