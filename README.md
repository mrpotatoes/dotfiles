## Anahi's dotfiles
This is a project that I use to put all my dotfiles on my [Mac] computer. With just the few requirements I have below I should be able to install a complete useable system for myself in one swoop (that takes forever to run of course.)

### Folder Structure
```
bin/
config/
custom/
  other/
  scripts/
```

## Requirements
- `git`
- `brew`
- `node`
- `nvm`
- ~~`macports`~~

### Install
#### Directions
[**`NOTE`**]: Under construction

1. Clone `https://github.com/mrpotatoes/dotfiles.git`
2. Install node

## TODO
### General
- [ ] Ability to use `zsh` or other shells
- [ ] Remove `macports` dependancies. Use `brew` instead. Removes an install step
- [ ] Any binaries that I've manually pulled in remove and use `brew` to install them instead
- [ ] Create an archive in case I delete stuff that I'd like to still have
  - [ ] Make sure that they're marked accordingly
- [ ] Write an `nvm` wrapper to update all `nvm` installed `node` versions
  - [ ] Run `NVM_UPDATE` update installing new `node`
    - [ ] Installs all global packages again
  - [ ] A command to update global packages for every node version installed
- [ ] Delete the `./config/misc/` directory

### `./lib`
Still thinking about this 🤔

- [ ] Create a `./lib` directory to keep all node scripts
- [ ] So I can install the node scripts as a packagef

### `./data`
- [ ] Create a `./data` directory
- [ ] Will contain
  - [ ] `local-scripts`
  - [ ] Up to date package files (`YAML`)
  - [ ] Profile or settings data (ie iterm, vscode)

### Binaries / Scripts
- [ ] Convert all scripts to use `node` instead of `bash` scripts so that they can be used on other shells
- [ ] Delete
  - [ ] `ack`
  - [ ] `add-custom`
  - [ ] `bin-edit`
  - [ ] `dotf-bin`
  - [ ] `dotf-lsregister`
  - [ ] `hashmap`
  - [ ] `hide`
  - [ ] `manuals`
  - [ ] `peak`
  - [ ] `search`
  - [ ] `setup`
  - [ ] `show_hidden`
  - [ ] `unhide`
- [ ] Nest the binaries so that they're cleaner to look at
- [ ] Rename these so they're cleaner when I do my updated CLI
- [ ] Confirm all the scripts work as intended

### `./config/*`
- [ ] Move all aliases, functions etc from elsewhere into `./git`
- [ ] Move `./misc/git-config` into `./.git`
- [ ] See what bash items can be generalized.
- [ ] Rename `./iterm` directory to `./macos`
  - [ ] `iterm2` configuration should exist here
  - [ ] 

### `./config/git`
- [ ] Move `git-completion-bash` into here

### Installation
- [ ] Dependencaies should be held in `JSON`/`YAML` for upgrading n' whatever else
- [ ] Create a `./system` folder at the root
  - [ ] Contains `INSTALL`, `UPDATE` and `DELETE`
- [ ] Rename `BUILD` to `INSTALL`
- [ ] Updates
  - [ ] Not just for binaries but should also update the config files with appropriate versions n' stuff
- [ ] Write it in `node`
- [ ] The `UPDATE` script should update `custom_aliases` also
- [ ] Allow for different shell types
  - If all scripts will primarilly be `node` then I'm not sure if this task is important
- [ ] Rename the custom directory to something better
- [ ] move `source $HOME/.dotfiles/custom/other/custom-aliases` to a smarter place

### Optional
- [ ] Create a script that generates the `./custom` directory so I don't have to include it in the repo
- [ ] Add terminial notifier
  - https://github.com/julienXX/terminal-notifier
  - https://github.com/chbrown/osx-notifier 
- [ ] Autocomplete, pleaaaaaaazzzzzzzzeeeeeeee!!!!
