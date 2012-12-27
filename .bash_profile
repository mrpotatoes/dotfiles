# Aliases & Functions
source $HOME/.bash_alias
source $HOME/.bash_functions

# ENVIROMENT VARIABLES
export PATH="$JOINED_PATH:$PATH"

export EDITOR=vim
export JAVA_HOME="/Library/Java/Home/"
export CATALINA_HOME=/Applications/Developer/Tomcat
export HISTTIMEFORMAT="[%h/%d - %H:%M:%S] "

#----------------------------------------------------------------
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

function command_not_found_handle() {
	echo $1
}

#----------------------------------------------------------------
function cleanupfiles() {
	PASS="root"
	mysql -uroot -p"$PASS" -e "use files; truncate file_managed; truncate watchdog"
	rm -rf /Users/avillanueva/Projects/Web-Applications/files/sites/default/files/*
}

function tomcat() {
	sh /Applications/Developer/Tomcat/bin/$1.sh
}

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
function sqldown() {
	PASS="root"
	mysqldump -uroot -p"$PASS" $1 > $2.sql
}

#----------------------------------------------------------------
function mfile() {
	touch $2.$1
}

#----------------------------------------------------------------
# Title
function title() {
    echo -ne "\033]0;$1\007";
}

#----------------------------------------------------------------
function file_ext() {
    file=$1
    new_ext=$2
    new_basename="${file%.*}"
    #newfile "extension: ${file##*.}"
    new_file=${new_basename}.${new_ext}
    mv ${file} ${new_file}
}
#----------------------------------------------------------------

#http://sos.blog-city.com/mac_os_x__bash_customize_your_terminal_prompt_a_little_color.htm
PS1="\[\e[0;32m\]\u:\[\e[0m\] [[\[\e[41m\]\w\[\e[0m\]]]: "

export PATH=/opt/local/bin:/opt/local/sbin:/Users/avillanueva/:$PATH
