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

local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'nvim-treesitter/nvim-treesitter'
  use {'neoclide/coc.nvim', branch = 'release'}
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}

end)

require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
  group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
  callback = function()
    vim.opt.foldmethod     = 'expr'
    vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
  end
})

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "python", "html", "css", "javascript"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  --ignore_install = { "" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    --disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },
}

require'lspconfig'.pyright.setup{}
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
vim.cmd[[hi LineNr guifg=#F9E2AF]]
