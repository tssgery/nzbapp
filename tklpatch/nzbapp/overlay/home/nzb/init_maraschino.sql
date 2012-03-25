insert into "applications" values(1,'SABnzbd','http://NZBAPP_HOSTNAME/sabnzbd','','SabNZBd.png',1);
insert into "applications" values(2,'SickBeard','http://NZBAPP_HOSTNAME/sickbeard','','SickBeard.png',1);
insert into "applications" values(3,'CouchPotato','http://NZBAPP_HOSTNAME/couchpotato','','CouchPotato.png',1);
insert into "applications" values(4,'HeadPhones','http://NZBAPP_HOSTNAME/headphones','','HeadPhones.png',1);

insert into "modules" values(1,'applications',1,1,0,0);
insert into "modules" values(2,'sickbeard',2,1,0,0);
insert into "modules" values(3,'sabnzbd',1,2,10,0);
insert into "modules" values(4,'diskspace',3,1,60,0);

insert into "disks" values(1,'/srv/storage',1);

insert into "settings" values(1,'sickbeard_api','SICK_APIKEY');
insert into "settings" values(2,'sickbeard_ip','NZBAPP_HOSTNAME');
insert into "settings" values(3,'sickbeard_port','8081');
insert into "settings" values(4,'sabnzbd_host','NZBAPP_HOSTNAME');
insert into "settings" values(5,'sabnzbd_port','8080');
insert into "settings" values(6,'sabnzbd_api','SAB_APIKEY');

