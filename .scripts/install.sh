#!/bin/bash
NO_ARGS=0 
E_OPTERROR=85

if [ $# -eq "$NO_ARGS" ]    # Script invoked with no command-line args?
then
  echo "This script should be called with arguments."
  exit $E_OPTERROR
fi


while getopts ":dai" Option
do
  case $Option in
    d   ) sh install-drush.sh;;
    #a	) sh install-create-aliases.sh;; # Needs work
    i	) sh install-core-publisher.sh;; # Needs work
    *   ) echo "Unimplemented option chosen.";;   # Default.
  esac
done

#  Decrements the argument pointer so it points to next argument.
#  $1 now references the first non-option item supplied on the command-line
#+ if one exists.
shift $(($OPTIND - 1))

exit $?