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
repository use the following:

`git clone --recurse-submodules git@github.com:8e7an/dotvim.git .vim` 

## Adding Vim Plugins to the DotVim repository as submodules

From .vim/ folder add a submodule from a GitHub account with the following format:

`git submodule add --depth 1 {https_git[hub]_repository_url} ./pack/{repository_author}/start/{plugin_name_alias_name}`

`{https_git[hub]_repository_url}` is the (SSH) url from the git remote (ie.
GitHub) to clone down from.

`{repository_author}` is the author's user name/handle from their GitHub profile.

`{plugin_name_alias_name}` is either the name of the plugin the author gave it
or a shorter alternate one you want to use.

Note the `/start/` folder in `/pack/`; this is to include this plugin in Vim's
built-in package manager location and part of Vim's start behavior.

For example to add the Vim Signature Plugin (https://github.com/kshenoy/vim-signature) enter:

`git submodule add --depth 1 https://github.com/kshenoy/vim-signature.git ./pack/kshenoy/start/signature`

This will proceed to add this submodule to the DotVim (.vim) repository and
clone it down from GitHub. 

With the submodule added you will have to commit it to the DotVim (.vim)
repository with a commit message like:

`git commit -m "Add submodule Vim plugin {plugin_name}"`

For example with the Vim Signature Plugin enter:

`git commit -m "Add submodule Vim plugin Vim Signature"`

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

### Scripts folder

There is the */scripts*  folder which has shell scripts for dealing with Vim.

*myvimdiff* is used to open `git mergetool` in a custom vimdiff setup. This is
set in the git config file (global) as .vimrc config options for vimdiff don't
apply so a script is used to call this instead and have the custom .vimrc options
apply.

### COC Plugin installation and setup for TypeScript and JavaScript

1. Clone down the Conqueror of Completion plugin as a submodule (from the `.vim`
   directory):

`git submodule add --depth 1 https://github.com/neoclide/coc.nvim.git ./pack/neoclide/start/coc`

This will clone the `coc.nvim.git` to the folder `coc.` Note that *coc* has the repo
name of *coc.nvim* not *coc* as both a shorthand and so as to not confuse with
Neovim.

Here is the structore of the *coc* plugin/submodule in the `.vim` folder:

pack/
└─ neoclide/
   └─ start/
      └─ coc/
         ├─ autoload/
         ├─ plugin/
         └─ package.json

2. Install and compile Conqueror of Code's Node.js extensions (Dependencies & Build):

` 
cd pack/neoclide/start/coc
npm install --production
`

3. Install Language Servers

Once you restart Vim, coc.nvim will be active, but it won't do anything until
you install extensions for your specific languages. You can install these
directly from inside Vim using the `:CocInstall` command. Here are the most
popular packages:

* TypeScript / JavaScript:

`:CocInstall coc-tsserver coc-html coc-css coc-json`

* Python:

`:CocInstall coc-pyright`

* Go:

`:CocInstall coc-go`

* Rust:

`:CocInstall coc-rust-analyzer`

* C / C++

`:CocInstall coc-clangd`

4. Recommended Base Configuration

It is recommended to add these customisations to `~/.vimrc` or `init.vim` file
(from https://cocnvim.com/install):

``
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-pyright', 'coc-rust-analyzer', 'coc-go', 'coc-clangd']

set nobackup
set nowritebackup
set updatetime=300
set signcolumn=yes
set laststatus=2

" Show coc.nvim status, including extension installation progress
set statusline^=%{coc#status()}

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Trigger completion with Tab and navigate the completion menu
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Diagnostics and code navigation
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
```

Modify as required.

Note the coc_global_extensions lists the langauges to support. Use only what is
required for your Vim setup with Conqueror of Completion:

* `coc-tsserver` for TypeScipt and JavaScript;
* `coc-json` for JSON;
* `coc-pyright` for Python;
* `coc-rust-analyzer` for Rust;
* `coc-go` for Go; and
* `coc-clangd` for C / C++

Other possible inclusions for the coc customisations:

``
" Remap keys for applying codeAction to the current line.
nmap <leader>ac <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf <Plug>(coc-fix-current)
``

5. Start Vim with a file of the type set up for the configuation and it should
   be good to go.

6. Other

Open a file for a selected language, then run `:CocInfo` to inspect the coc.nvim runtime.

Run `:CocDiagnostics` to view the CoC Diagnostics. 

* CoC homepage: https://cocnvim.com/
* CoC installation guid: https://cocnvim.com/
* CoC GitHub: https://github.com/neoclide/coc.nvim
* Ultimate Vim TypeScript Setup: https://pragmaticpineapple.com/ultimate-vim-typescript-setup/

CoC also has support for CSS with: 

`:CocInstall coc-css`

And CSS in HTML:

`:CocInstall coc-html-css-support`

Would have to add `coc-css` / `coc-html-css-support` to `g:coc_global_extensions.`

Note: 

Crucial Tweak for SCSS: Because SCSS utilizes symbols like @ (for @mixin,
@include, or @extend), Vim's default keyword boundaries can break
auto-completion. Add this line to your `~/.vimrc` or `init.vim` so CoC
accurately reads those directives:

`autocmd FileType scss setl iskeyword+=@-@`
