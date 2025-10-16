# DotVim Repository Notes

Repository to store my **.vim** configuration and plugins (submodules) for my Vim installation.

* Includes **\*.vimrc**
* Additional colors for vim in the colors themes folder
* ftplugin folder for filetype **\*.vim** configuration files
* pack folder for the Plugins (submodules)

This repository is intended to be cloned into the `/User/{username}` / `~` (Home) directory. 

Use the clone command:

`git clone git@github.com:8e7an/dotvim.git .vim`

Have to make sure this directory doesn't already exist.

The **\*.vimrc** file is stored in this repository but will need a symbolic **\*.vimrc** link in the `~` (Home) directory to point to it. 

This can be done with the Terminal command:

`ln -s .vim/.vimrc ~/.vimrc`

When cloning down the **dotvim** repository the submodules that the plugins are held in aren't cloned down automatically. 

Plugins are installed with Vim's own plugin manager (not a 3rd party one) and is managed with git submodules. Plugins are located in the **.\pack** subdirectory.
  
To clone down the plugins (held as git submodules) use the following:

`git submodule init`

`git submodule update`

Following command does the same thing:

`git submodule update --init --recursive`

To initialise and update submodules when cloning down the main *dotvim* repository user the following:

`git clone --recurse-submodules git@github.com:8e7an/dotvim.git .vim`
