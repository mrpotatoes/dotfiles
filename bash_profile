# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

source $HOME/.bash_alias
source $HOME/.bash_functions

# ENVIROMENT VARIABLES
export PATH="$JOINED_PATH:$PATH"
export EDITOR=vim
export JAVA_HOME="/Library/Java/Home/"
export CATALINA_HOME=/Applications/Developer/Tomcat
export HISTTIMEFORMAT="[%h/%d - %H:%M:%S] "
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Add 'killall' tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

#http://sos.blog-city.com/mac_os_x__bash_customize_your_terminal_prompt_a_little_color.htm
PS1="\[\e[0;32m\]\u:\[\e[0m\] [[\[\e[41m\]\w\[\e[0m\]]]: "

export PATH=/opt/local/bin:/opt/local/sbin:/Users/avillanueva/:$PATH
