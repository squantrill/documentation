# Updating Kimai

## Step 1

To install a new version just replace the entire directory with the new package EXCEPT the file autoconf.php which can be found inside the /includes folder. Additionally you have to set writing permissions to all ../compile directories (don’t forget the ones in the subfolders of your extensions!) so that PHP can write to it. Writing permission must also be granted to the /temporary folder and the included /temporary/logfile.txt.

Attention: Kimai will NOT work with wrong writing permissions!

## Step 2

Finally visit your Kimai installation with your web browser and the auto update process will perform all further necessary updates.

A new version updates the database automatically (is necessary). Before that a backup of your data will be created. Normally you'll not even notice this process. If anything goes wrong during the database-update you can recover the data via phpMyAdmin (we're also working on a tool for restoring…).

**CAUTION:** This software is free of charge. That doesn't mean, that you are allowed to remove copyright-notes (Neither on the login-panel nor in the credits-window). Of course you're not allowed to remove the link to the credits… If those notes are offending you and you do not agree with these rules - DON'T use Kimai.
