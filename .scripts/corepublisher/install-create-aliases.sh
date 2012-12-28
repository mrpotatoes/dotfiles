#!/bin/bash
. install-variables.sh 

svn up ${INSTALL_DIRECTORY}${INSTALL_NAME}/sites/
svn up ${INSTALL_DIRECTORY}${INSTALL_NAME}/profiles/

#ln -s $DRUSH_INSTALL/drush /usr/local/bin/drush