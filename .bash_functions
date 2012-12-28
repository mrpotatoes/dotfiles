#----------------------------------------------------------------
# A simpler open function. It's a wrapper for opening applications in OS X.
# 
# Examples:
# $ o activity monitor
# $ o mail
function o() {
	# if the second parameter is not in there then it'll do the else.  
	# otherwise it does the "then" statement
	if [ -z $2 ]
		then
			open -a "$1.app"
		else
			open -a $1\ $2.app
	fi
}

#----------------------------------------------------------------
# A simple function to cleanup files within one of my drupal websites. Sometimes
function cleanupfiles() {
	PASS="root"
	mysql -uroot -p"$PASS" -e "use files; truncate file_managed; truncate watchdog"
	rm -rf /Users/avillanueva/Projects/Web-Applications/files/sites/default/files/*
}

#----------------------------------------------------------------
# Start my tomcat server which is located within this directory. I don't use tomcat anymore.
function tomcat() {
	sh /Applications/Developer/Tomcat/bin/$1.sh
}

#----------------------------------------------------------------
# Reset the user on my drupal site.
function resetuser() {
	PASS="root"
	if [ -z $1 ]
		then
			DBNAME=files
		else
			DBNAME=$1
	fi
	
	QUERY="use ${DBNAME}; UPDATE users SET pass='\$S\$Cd059Vsxc8berFeg6hspaa7ejx2bSxyUisvCbT4h9o8XIgSUtPKz' WHERE uid=1; UPDATE users SET name='admin' WHERE uid=1;"
	mysql -uroot -p"$PASS" -e "${QUERY}"
}

function sqlup() {
	PASS="root"
	mysql -uroot -p"$PASS" $1 < $2
}

#----------------------------------------------------------------
# Take a dump of a mysql database. If the second param isn't there the sqlfile will be 
# named after the first param.
#
# Examples:
# $ sqldown files files
# $ sqldown files
function sqldown() {
	PASS="root"
	
	if [ -z $2 ]
		then
			mysqldump -uroot -p"$PASS" $1 > $1.sql
		else
			mysqldump -uroot -p"$PASS" $1 > $2.sql
	fi
}

#----------------------------------------------------------------
# A much easier way to make many files recursively.
#
# Example:
# $ delete_files .DS_Store
# $ delete_files .svn
function delete_files() {
	find . -name "$1" -exec rm -rf '{}' \;
}

#----------------------------------------------------------------
# A much easier way to make many files. 
function mfile() {
	touch $2.$1
}

#----------------------------------------------------------------
# Set the title of a terminal window. 
function title() {
    echo -ne "\033]0;$1\007";
}

#----------------------------------------------------------------
# Rename a file's extension
function file_ext() {
    file=$1
    new_ext=$2
    new_basename="${file%.*}"
    #newfile "extension: ${file##*.}"
    new_file=${new_basename}.${new_ext}
    mv ${file} ${new_file}
}
#----------------------------------------------------------------