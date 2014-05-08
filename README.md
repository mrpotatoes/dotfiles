## ANDRIC'S DOTFILES
This is a project that I use to put all my dotfiles on my mac computer. I prefer Mac's so that's what I use.

## REQUIREMENTS
### Git
To "git" stuff.
### Macports
This is all based on macports and it would be realtivly easy to use homebrew if you're so inclined to run an ACK against port and change it. Or, you could use macports. It isn't that bad (it's quite great).
**Folder Structure**
<pre>
bin/
config/
custom/
  other/
  scripts/
data/
  hosts/
manuals/
useful/
</pre>

## DEPENDANCIES
<pre>
  aspell: https://trac.macports.org/browser/trunk/dports/textproc/aspell/Portfile
  ctags: https://trac.macports.org/browser/trunk/dports/devel/ctags/Portfile
  etags: Comes with emacs (My emacs is via macports)
</pre>

### INSTALL
#### Directions
* Install the dependancies from above.
* Run the BUILD file. You may need to give that file permissions. As well as everything in the bin directory.

#### What it does
* Installs emacs.
* Installs

For futher options (other setups) run setup and it will give you the rest of the options such as webserver and some smart OSX Defaults for example.

## TODO
* Create a custom mrpotatoes-project.el based, on features, on mk-project.
* Add back some of my netbeans keybindings that I miss.
* Perhaps see what's up with the super key on OSX.
* Figure out profiles
* Try out C Sub Word. I saw something about this that I'd like to check out.
* Fix the "MAKEFILE"
