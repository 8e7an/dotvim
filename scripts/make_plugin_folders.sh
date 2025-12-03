#!/usr/bin/env bash

echo -e "Creating plugin directories:\nplugin\nautoload\ndoc"
mkdir -p ~/.vim/pack/$1/start/$2/plugin
mkdir -p ~/.vim/pack/$1/start/$2/autoload
mkdir -p ~/.vim/pack/$1/start/$2/doc

touch ~/.vim/pack/$1/start/$2/plugin/$2.vim
# TODO: ask if the plugin/$2.vim file is to be created and if so create it as follows:
touch ~/.vim/pack/$1/start/$2/plugin/$2.vim
# TODO: ask if the doc/$2.txt file is to be created and if so create it as follows:
touch ~/.vim/pack/$1/start/$2/doc/$2.txt
