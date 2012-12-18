#!/bin/bash

# Get the variables so that we can install Drush where it needs to be
. install-variables.sh 

tar -zxf drush-7.x-4.4.tar.gz

# Move the drush to elsewhere
mv drush $DRUSH_INSTALL

# Make drush executeable
chmod u+x $DRUSH_INSTALL/drush
chmod -R 777 $DRUSH_INSTALL/includes

# Create symbolic link to drush in /usr/local/bin/drush
ln -s $DRUSH_INSTALL/drush /usr/local/bin/drush
