#!/usr/bin/env bash

# A typical Vim plugin structure includes:
# plugin/: Contains scripts that are loaded when Vim starts. These often define
# commands, mappings, and functions that are globally available.  
#
# - ftdetect/: Contains scripts for detecting file types.  
# - ftplugin/: Contains scripts that are loaded specifically for a particular
#   file type.  
# - autoload/: Contains scripts that are loaded only when a specific function or
#   command is called, improving startup performance.  syntax/: Contains scripts
#   for defining syntax
#   highlighting rules.  
# - doc/: Contains documentation for your plugin.
# 
# Implement the Plugin's Logic:
# Commands: Define custom commands using :command in Vimscript or
# vim.api.nvim_create_user_command in Lua (for Neovim).
# Mappings: Create custom key mappings using :map, :noremap, etc., in Vimscript
# or vim.keymap.set in Lua (for Neovim).
# Functions: Write functions to encapsulate reusable logic. Use function! in
# Vimscript or define Lua functions (for Neovim).
# Autoloading: For more complex plugins, leverage autoloading to load parts of
# your plugin only when needed.
# 
# Consider User Experience:
# Documentation: Provide clear and concise documentation in the doc/ directory
# so users understand how to use your plugin. 
# Configuration: Allow users to customize your plugin's behavior through
# options or variables.  
# Robustness: Use normal! instead of normal in Vimscript to ensure your
# plugin's actions are not affected by user-defined mappings.
# 
# Example of a Vimscript command (in plugin/myplugin.vim):
# command! MyGreet echo "Hello from MyPlugin!"

echo -e "Creating plugin directories:\nplugin\nautoload\ndoc"
mkdir -p ~/.vim/pack/$1/start/$2/plugin
mkdir -p ~/.vim/pack/$1/start/$2/autoload
mkdir -p ~/.vim/pack/$1/start/$2/doc

touch ~/.vim/pack/$1/start/$2/plugin/$2.vim
# TODO: ask if the plugin/$2.vim file is to be created and if so create it as follows:
touch ~/.vim/pack/$1/start/$2/plugin/$2.vim
# TODO: ask if the doc/$2.txt file is to be created and if so create it as follows:
touch ~/.vim/pack/$1/start/$2/doc/$2.txt
