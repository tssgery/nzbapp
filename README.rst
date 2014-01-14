NZBAPP - prebuilt appliance to utilize NZB files
=============================================

Based upon the turnkey linux fileserver appliance...

This is a project for building a Turnkey Linux patch to configure a
Turnkey Linux 13.0 installation along with the following additions:

- SABnzbd
- CouchPotato (for locating NZB files for movies)
- Sickbeard (for locating NZB files for TV shows)
- Headphones (for locating NZB files for music releases)
- Htpc.io (as a front end to everything)



NOTES
==================================================================
nzbapp is configured as follows:

DNS must be configured. During installation you will be prompted
for the hostname of the NZBAPP appliance. DNS resolution to that
hostname must be available for all clients accessing the appliance.
This can be done by configuring it with DNS or by adding an entry
in the clients /etc/hosts (or \Windows\system32\drivers\etc\hosts)
file

Complete and incomplete binaries are being placed in /srv/storage.

If additional space is needed, it may be best to either create
an LVM at initial installtion time OR add a second disk to the 
installation, create a filesystem and mount it on /srv/storage

- You must configure each application with their own webui
     - http://<ipaddress>/couchpotato for CouchPotato
     - http://<ipaddress>/sickbeard for sickbeard
     - http://<ipaddress>/headphones for Headphones
- Run through the SABnzbd setup wizard at:
     - http://<ipaddress>:8080


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

-  nzb user: username **nzb**, password set on first boot
-  Webmin, Webshell, SSH, Samba: username **root**, password set on first boot
-  Web based file manager (AjaXplorer):
   
   - username **admin** (Local), password set on first boot
   - username **root** (Samba)




