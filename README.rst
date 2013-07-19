NZBAPP - prebuilt appliance to utilize NZB files
=============================================

Based upon the turnkey linux fileserver appliance...

This is a project for building a Turnkey Linux patch to configure a
Turnkey Linux 12.1 installation along with the following additions:

- SABnzbd
- CouchPotato (for locating NZB files for movies)
- Sickbeard (for locating NZB files for TV shows)
- Headphones (for locating NZB files for music releases)
- Maraschino as a front end



NOTES
==================================================================
nzbapp is configured as follows:
- DNS much be configured. During installation you will be prompted
  for the hostname of the NZBAPP appliance. DNS resolution to that
  hostname must be available for all clients accessing the appliance.
  This can be done by configuring it with DNS or by adding an entry
  in the clients /etc/hosts (or \Windows\system32\drivers\etc\hosts)
  file
- complete and incomplete binaries are being placed in /srv/storage
  if additional space is needed, it may be best to either create
  an LVM at initial installtion time OR add a second disk to the 
  installation, create a filesystem and mount it on /srv/storage
- You must run through the SABnzbd setup wizard at:
      http://<ipaddress>:8080


DONATIONS
==================================================================
If you want to send donations to keep this work going, please send them to
the authors of the included programs and/or Turnkey Linux.
They are the heroes in this effort, not me.


USAGE
==================================================================
This patch needs to built with the Turnkey Linux TKLdev appliance

More information can be found at:
http://http://www.turnkeylinux.org/tkldev


Credentials *(passwords set at first boot)*
-------------------------------------------

-  Webmin, Webshell, SSH, Samba: username **root**
-  Web based file manager (AjaXplorer):
   
   - username **admin** (Local)
   - username **root** (Samba)


