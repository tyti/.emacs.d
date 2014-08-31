#!/bin/sh

cask install

ln -s $(cask package-directory)/auto-complete-*/dict ~/.emacs.d/etc/ac-dict
