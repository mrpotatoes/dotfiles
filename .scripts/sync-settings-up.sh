#!/bin/bash

# Rsync all my settings files -----------------------------------

# Profile
rsync -v ~/.bash_profile taters@mrpotatoes.com:profile

# Aliases
rsync -v ~/.bash_alias taters@mrpotatoes.com:profile

# Useful directory
rsync -vr ~/.useful taters@mrpotatoes.com:profile

# Scripts directory
rsync -vr ~/.scripts taters@mrpotatoes.com:profile

# Et Cetera
# Nothing as of yet