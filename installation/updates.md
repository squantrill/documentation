# Updates

## Step 1

To install a new version just replace the entire directory with the new package **EXCEPT** the file **autoconf.php** which can be found inside the /includes folder.

Additionally you have to set write permissions to the **temporary/** folder.

Attention: Kimai will NOT work with wrong permissions!

For Linux that could be:

```
chmod -R 777 temporary/
```
It would be even better, if you give writing permission to your PHP or Webserver user only, instead of making it world writable. The last can be or is a risk, especially in shared hosting environments.

## Step 2

Visit your Kimai installation with your web browser and the auto update process will perform all necessary tasks.

A new version updates the database automatically. Before that a backup of your data will be created. Normally you'll not even notice this process. If anything goes wrong during the database-update you can recover the data via phpMyAdmin.



