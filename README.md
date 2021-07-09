# itscarlosecp's dotfiles

Welcome to my dotfiles, a repo where I store my development environment configurations. You can blindly copy these files if you wanted to, but I strongly suggest you use them as inspiration to build your dotfiles (you can learn a lot from setting up your personal configs).

![dotfiles](https://user-images.githubusercontent.com/47466248/124402458-32a18600-dce5-11eb-8a53-c837d9a61849.png)

## Requirements

These files are designed to work in UNIX-based operating systems such as Linux and MacOS. If you are using Windows as your desktop OS you can use [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10) as well. If you are using my Neovim config, version `0.5` or superior is required.

## Neovim
### Installation

My Neovim config is what makes me proud of this repo, and I bet you are here looking for it. You can either clone this entire repo or just run the following install command:

### Post-Install Setup
You might need to run some commands after you finish updating your config files. 
* **Plugin Manager:** This tool allows you to add, update or remove any plugin. The config file for these plugins is located at `nvim/lua/plugins.lua`. You can modify whatever you what, but keep in mind that some plugins have specific dependencies (detailed in this same file). My plugin manager of choice (the one included with my config) is [Packer](https://github.com/wbthomason/packer.nvim) but you can replace it with whichever plugin manager you like the most.
* **Autocomplete:** You will have to install every new language server you would like to use (non are included). These servers provide Neovim autocompletion and error diagnostic capabilities. To install a new language server run: `:LspInstall <language-name>` from the vim command-line. Example: `:LspInstall python`.
* **Formatting:** Autoformatting for any filetype is optional. The way I set this up is using [formatter.nvim](https://github.com/mhartington/formatter.nvim) and then installing each formatter individually (details on how to install them in the `nvim/lua/_formatter/init.lua` file. Example: `npm i -g prettier`). I consider this way to be highly customizable, but if you don't what to keep installing independent formatters, you can replace this plugin with other autoformat plugin with nice defaults, such as [vim-autoformat](https://github.com/vim-autoformat/vim-autoformat), which includes formatters for pretty much whatever language you could imagine.

### Features
#### LSP (Language Server Protocol)
Since version `0.5` Neovim provides a native way of consuming language servers that use the [LSP Standard](https://microsoft.github.io/language-server-protocol/) (the same that most editors use). This allows you to use the (literally) same autocompletion tools that you would encounter in editors such as VSCode. 

#### Fast Files Explorer and Fuzzy Finder
Both the file explorer and fuzzy finder (tool used to search for a specific file) I use are highly performant plugins written in Lua with speed and easy-configurability in mind. You can check them out here: [NvimTree Lua](https://github.com/kyazdani42/nvim-tree.lua) (file explorer), [Telescope](https://github.com/nvim-telescope/telescope.nvim) (fuzzy finder).

#### Syntax Highlighting
If you ever tried to use Vim without configuration it might have seem like you couldn't get nice support for syntax highlighting, even when trying to get help from some well-known plugins. Neovim `0.5` introduces [Tree-sitter](https://github.com/tree-sitter/tree-sitter) support, an incremental parsing generator that allows you to customize your syntax trees as much as you would like. I provide some of my own colorschemes with my config, but you can install any colorscheme you would like (with or without Tree-sitter support), you can find some of my favorites [here](https://github.com/rockerBOO/awesome-neovim#colorscheme).
