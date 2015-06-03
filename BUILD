#!/bin/sh

# Clear the console buffer to take over the full screen.
clear

WORKING_DIRECTORY=${PWD##*/}

# This shell script demonstrates how to write interactive shell scripts
# by allowing you to get user input.  Also demonstrated is the use of
# shell functions and shell arrays, timing using SECONDS, and more!
# Written by Wayne Pollock, Tampa FL 1996

echo "This build script will setup your term, osx, bash profile, Emacs and git."
setup iterm
setup osx
setup profile
setup emacs
setup git

# LAST NOTES ---------------------------------------------------------------------------
clear
echo "Now kill this session and open up a new one for all the changes to take effect.";
echo "One last note. If you want a webserver run \"setup webserver\" In order to get apache and PHP and MySQL on your system"
