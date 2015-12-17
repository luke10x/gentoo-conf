#!/bin/bash

# This script links system VIM config files to the content of 
# this directory, it only has to be ran once after cloning
# this directory from git.

SCRIPT_DIR=$(dirname $(readlink -f $0))

ln --backup -s $SCRIPT_DIR/etc/conf.d/modules /etc/conf.d 
ln --backup -s $SCRIPT_DIR/etc/conf.d/net /etc/conf.d 
ln --backup -s $SCRIPT_DIR/etc/grub.d/42_ssdplus240 /etc/grub.d 
ln --backup -s $SCRIPT_DIR/etc/portage/package.use /etc/portage
ln --backup -s $SCRIPT_DIR/etc/portage/make.conf /etc/portage
ln --backup -s $SCRIPT_DIR/etc/portage/package.accept_keywords /etc/portage
ln --backup -sn $SCRIPT_DIR/etc/portage/env /etc/portage
