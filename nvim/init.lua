local catppuccin = require("catppuccin")
catppuccin.setup(settings)
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("transparent").setup({
    enable = true,
    extra_groups = {
        "BufferLineTabClose",
        "BufferlineBufferSelected",
        "BufferLineFill",
        "BufferLineBackground",
        "BufferLineSeparator",
        "BufferLineIndicatorSelected",
    },
})
vim.cmd[[colorscheme catppuccin]]
vim.cmd[[set nocompatible]]
vim.cmd[[set showmatch]]
vim.cmd[[set ignorecase]] 
vim.cmd[[set mouse=v]] --middle click paste
vim.cmd[[set hlsearch]]
vim.cmd[[set incsearch]]
vim.cmd[[set tabstop=4]]
vim.cmd[[set softtabstop=4]]
vim.cmd[[set expandtab]] --tabs to white space
vim.cmd[[set shiftwidth=4]] --width for indent
vim.cmd[[set autoindent]] --indent 
vim.cmd[[set number]] --numbers
vim.cmd[[set wildmode=longest,list]] --bash complete
vim.cmd[[syntax on]]
vim.cmd[[set mouse=a]] --enable mouseclick
vim.cmd[[set clipboard=unnamedplus]] --use system clipboard skr
vim.cmd[[set noswapfile]] --swap stinkt
vim.cmd[[set backupdir=~/.cache/vim]] --backupdir
vim.cmd[[set cc=150]]
