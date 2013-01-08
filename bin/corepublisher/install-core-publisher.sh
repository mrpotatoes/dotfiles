#!/bin/sh
# Some variables that we need to setup.  Paths and usernames
. install-variables.sh 

SITE_DIRECTORY=$INSTALL_DIRECTORY$INSTALL_NAME

## DO THE WORK ------------------------------------------------------------------------
#--echo "Remove database $DATABASE_NAME"
mysql --user=$DATABASE_USER --pass=$DATABASE_PASS -e "DROP DATABASE $DATABASE_NAME";

#--echo "Create a database"
mysql --user=$DATABASE_USER --pass=$DATABASE_PASS -e "create database $DATABASE_NAME";

#-- Delete the directory if it exists then recreate it
cd $INSTALL_DIRECTORY
rm -rf $INSTALL_NAME
mkdir $INSTALL_NAME
cd $INSTALL_NAME

#--echo "Checkout the drupal install then move the default.settings.php out of thar"
svn co svn+ssh://avillanueva@dev.publicbroadcasting.net/home/svn/trunk/drupal/drupal7 . 
mv sites/default/default.settings.php .
rm -rf sites profiles
svn co svn+ssh://avillanueva@dev.publicbroadcasting.net/home/svn/trunk/pubcore/sites sites/
svn co svn+ssh://avillanueva@dev.publicbroadcasting.net/home/svn/trunk/pubcore/profiles profiles/

#echo "Move the settings file"
mkdir sites/default
mv default.settings.php sites/default/

chmod -R 777 ${INSTALL_DIRECTORY}${INSTALL_NAME}/profiles
chmod -R 777 ${INSTALL_DIRECTORY}${INSTALL_NAME}/sites/*
chmod -R 777 ${INSTALL_DIRECTORY}${INSTALL_NAME}/sites/default/settings.php
chmod -R 777 ${INSTALL_DIRECTORY}${INSTALL_NAME}/sites/default/default.settings.php

#echo "Using drush to install your site.  "
drush site-install -y ndest --db-url=mysql://$DATABASE_USER:$DATABASE_USER@localhost/$DATABASE_NAME
#drush site-install -y ndest --db-url=mysql://root:root@localhost/station

drush dl -y admin_menu filter_perms
drush dis -y toolbar shortcut
drush en -y admin_menu module_filter filter_perms
drush variable-set -y admin_theme seven

#drush dl -y admin_menu; drush en -y admin_menu
#drush dis -y toolbar shortcut; drush variable-set admin_theme seven 

#echo "Settings up permissions for updates, installs and all that fun stuff"
chmod -R 777 ${INSTALL_DIRECTORY}${INSTALL_NAME}/profiles
chmod -R 777 ${INSTALL_DIRECTORY}${INSTALL_NAME}/sites/*
chmod -R 777 ${INSTALL_DIRECTORY}${INSTALL_NAME}/sites/default/settings.php
chmod -R 777 ${INSTALL_DIRECTORY}${INSTALL_NAME}/sites/default/default.settings.php

echo "Backing up the hosts file to your user directory incase this code horribly, horribly wrong."
cp /etc/hosts ~
echo "127.0.0.1 $INSTALL_ALIAS" >> /etc/hosts

echo "Adding your alias in order to get it into Apache."
echo "\n\n<VirtualHost *>
  ServerName $INSTALL_ALIAS
  DocumentRoot \"$INSTALL_DIRECTORY$INSTALL_NAME\"
</VirtualHost>" >> $HTTPD_CONF

open -e /etc/hosts
echo "All Done.  Restart MAMP and you are good to go :)"

exit 0