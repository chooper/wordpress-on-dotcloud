#!/bin/bash

# This file is part of the Wordpress On Dotcloud package.
# 
# (c) Quentin Pleplé <quentin.pleple@gmail.com>
# 
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.

# Move wp-content directory to ~/data to make it persistent

if [ -d ~/data/wp-content ]; then
    mv -n ~/current/wp-content/plugins/* ~/data/wp-content/plugins
    mv -n ~/current/wp-content/themes/* ~/data/wp-content/themes
    rm -rf ~/current/wp-content
else
    mkdir -p ~/data/wp-content
    mv ~/current/wp-content ~/data
fi

ln -s ~/data/wp-content ~/current/wp-content
