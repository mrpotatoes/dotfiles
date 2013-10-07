#!/bin/sh

# Clear the console buffer to take over the full screen.
clear

WORKING_DIRECTORY=${PWD##*/}

# This shell script demonstrates how to write interactive shell scripts
# by allowing you to get user input.  Also demonstrated is the use of
# shell functions and shell arrays, timing using SECONDS, and more!
# Written by Wayne Pollock, Tampa FL 1996

# DO INSTALL -----------------------------------------------------------------------------
echo  "1. Would you like to install the dotfiles? (yes/no)"
read CONTINUE

if [ "$CONTINUE" != "yes" ]
  then
    echo 'Stopping execution'
    exit 0
fi

# Create the custom files ----------------------------------------------------------------
clear
echo "2. Would you like to create and/or generate custom paths, aliases and scripts? (yes/no)"
echo "If so the directories will also be opened so that they can be added to."
read CUSTOM

if [ "$CUSTOM" == "yes" ]
  then
  	if [ ! -d "$DIRECTORY" ]; 
  		then
			  # These directories already exist.
		fi
  else
    echo "We will skip this step";
fi

# OSX SETTINGS ---------------------------------------------------------------------------
clear
echo  "3. Would you like to use the custom osx settings? (yes/no)"
read CUSTOM_OSX

if [ "$CUSTOM_OSX" == "yes" ]
  then
    echo "Running the OSX settings."
    . $HOME/.dotfiles/config/osx-defaults
  else
    echo "We will skip this step";
fi

# BASH PROFILE ---------------------------------------------------------------------------
clear
prompt "5. The last thing to do is to create the bash profile."
ln -s ${HOME}/.dotfiles/config/bash/bash_profile ${HOME}/.bash_profile;

# EMACS ----------------------------------------------------------------------------------
echo "Create emacs settings file \n"
ln -s ${HOME}/.dotfiles/config/emacs/emacs-init.el ${HOME}/.emacs;;

echo "Download the emacs modules \n"
${HOME}/.dotfiles/config/emacs/emacs-setup-modules;;

# LAST NOTES ---------------------------------------------------------------------------
clear
prompt "6. For this all to work close out this session and open a new one.";
