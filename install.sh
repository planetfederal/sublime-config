#!/bin/sh

if [ -z "$SUBLIME_CONFIG_DIR"]
then
    SUBLIME_CONFIG_DIR=~/.config/sublime-text-2/Packages
fi

if ! [ -d "$SUBLIME_CONFIG_DIR" ]
then
    cat << EOF
Aborting because "$SUBLIME_CONFIG_DIR" does not appear to be the Sublime Text
packages directory.  You can determine the correct configuration directory
using the [Preferences > Browse Packages...] menu option in Sublime Text.
Then specify it at the command line like:
$ SUBLIME_CONFIG_DIR="path/to/sublime/Packages" sh install.sh
EOF
else
CHECKOUT=`dirname "$0"` 
cp -r "$CHECKOUT"/Packages `dirname "$SUBLIME_CONFIG_DIR"`
fi
