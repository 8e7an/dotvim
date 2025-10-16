# DotVim Repository Notes

Repository to store my **.vim** configuration and plugins (submodules) for my Vim installation.

* Includes **\*.vimrc**
* Additional colors for vim in the colors themes folder
* ftplugin folder for filetype **\*.vim** configuration files
* pack folder for the Plugins (submodules)

This repository is intended to be cloned into the `/User/{username}` / `~` (Home) directory. 

## Clone the Repository including Submodules (Vim Plugins)

### Clone the DotVim Repository

Use the clone command:

`git clone git@github.com:8e7an/dotvim.git .vim`

Make sure this directory doesn't already exist.

### Make a symbolic Link to point to .vimrc in the DotVim (./vim) Repository

The **\*.vimrc** file is stored in this repository but will need a symbolic
**\*.vimrc** link in the `~` (Home) directory to point to it. 

Use the Terminal command:

`ln -s .vim/.vimrc ~/.vimrc`

### Clone Down Submodules (Vim Plugins)

When cloning down the **dotvim** repository the submodules that the plugins are
held in aren't cloned down automatically. 

Plugins are installed with Vim's own plugin manager (not a 3rd party one) and
is managed with git submodules. Plugins are located in the **.\pack**
subdirectory.
  
To clone down the plugins (held as git submodules) use the following:

`git submodule init`

`git submodule update`

Following command does the same thing:

`git submodule update --init --recursive`

To initialise and update submodules when cloning down the main *dotvim*
repository user the following:

`git clone --recurse-submodules git@github.com:8e7an/dotvim.git .vim` 

## Adding Vim Plugins to the DotVim repository as submodules

From .vim/ folder add a submodule from a GitHub account with the following format:

`git submodule add {https_git[hub]_repository_url} ./pack/{repository_author}/start/{plugin_name_alias_name}`

`{repository_author}` is the author's user name/handle from their GitHub profile.

`{plugin_name_alias_name}` is either the name of the plugin the author gave it
or a shorter alternate one you want to use.

Note the `/start/` folder in `/pack/`; this is to include this plugin in Vim's
built-in package manager location and part of Vim's start behavior.

For example to add the Vim Signature Plugin (https://github.com/kshenoy/vim-signature) enter:

`git submodule add https://github.com/kshenoy/vim-signature.git ./pack/kshenoy/start/signature`

This will proceed to add this submodule to the DotVim (.vim) repository and
clone it down from GitHub. 

With the submodule added you will have to commit it to the DotVim (.vim)
repository with a commit message like:

`git commit -m "Add submodule {submodule} Vim plugin {plugin_name}"`

In the `.gitmodules` the submodule will include the newly added submodule. Eg.:

```
[submodule "pack/kshenoy/start/signature"]
        path = pack/kshenoy/start/signature
        url = https://github.com/kshenoy/vim-signature.git
```

Make sure to test the plugin works and provided it is okay push the commits to
the remote.

## Other

It's worth reading the plugin's GitHub (README.md) instructions on how it works
and to make notes about it in the NOTES.md file. In particular, look into its
options on customisation and commands.

From time-to-time it's worth updating any plugins with any updates that might
be available for them with:

`git submodule update --remote --recursive`

If there are any updates to the submodules/plugins git will proceed to pull
those down. You will also need to commit these changes to the DotVim (.vim)
repository. 

