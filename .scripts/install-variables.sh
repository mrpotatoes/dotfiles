#!/bin/bash

## Paths that we need to manage are here
INSTALL_DIRECTORY=/Users/avillanueva/Projects/Web-Applications/
HTTPD_CONF=/Applications/MAMP/conf/apache/httpd.conf
DRUSH_INSTALL=/Users/avillanueva/.drush_install

## Main variables that will be used
SVN_USERNAME=avillanueva
INSTALL_NAME=update

## Database stuff and simple variable manipulation
DATABASE_USER=root
DATABASE_PASS=root
INSTALL_ALIAS=$INSTALL_NAME.site
DATABASE_NAME=$INSTALL_NAME