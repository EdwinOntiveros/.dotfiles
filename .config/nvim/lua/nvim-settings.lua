local banner = [[
 _   _ _   _ ________  ___           _   _   _
| \ | | | | |_   _|  \/  |          | | | | (_)
|  \| | | | | | | | .  . |  ___  ___| |_| |_ _ _ __   __ _ ___
| . ` | | | | | | | |\/| | / __|/ _ \ __| __| | '_ \ / _` / __|
| |\  \ \_/ /_| |_| |  | | \__ \  __/ |_| |_| | | | | (_| \__ \
\_| \_/\___/ \___/\_|  |_/ |___/\___|\__|\__|_|_| |_|\__, |___/
                                                      __/ |
                                                     |___/
            Edwin Jossiel Ontiveros Montanez
                @github.com/EdwinOntiveros
                         10/2021
]]

local vim = vim
local set = vim.opt

-- disable vi compatibility & basic securuty
set.compatible      = false
set.modelines       = 0

-- format options
set.formatoptions   = 'tcqrnlj'

-- vim pseudo-fzf
set.path:append('**')
set.wildmode        = { 'longest', 'list', 'full' }
set.wildmenu        = true

-- behavior settings
set.spell           = false
set.scrolloff       = 7
set.sidescrolloff   = 3
set.hidden          = true
set.backspace       = { 'eol', 'start', 'indent' }
set.wrap            = false
set.whichwrap:append('<,>,h,l')
set.magic           = true
set.timeoutlen      = 500
set.switchbuf       = { 'useopen', 'usetab', 'newtab' }
set.showmode        = true
set.showcmd         = true
set.lazyredraw      = true
set.autoread        = true

-- file format and encoding
set.encoding        = 'utf-8'
set.fileformats     = { 'unix', 'dos', 'mac' }

-- disable file backup and swap file
set.backup          = false
set.writebackup     = false
set.swapfile        = false

-- disable visual and audio error indicators
set.errorbells      = false
set.visualbell      = false

-- tab settings
set.tabstop         = 4
set.shiftwidth      = 0
set.softtabstop     = -1
set.expandtab       = true
set.autoindent      = true
set.smartindent     = true
set.smarttab        = true
set.shiftround      = true
set.list            = true
set.listchars       = 'tab:‣-,trail:·,extends:❯,precedes:❮'
set.textwidth       = 80

-- appearance settings
set.title           = true
set.ruler           = true
set.cmdheight       = 2
set.number          = true
set.relativenumber  = true
set.foldcolumn      = 'auto'
set.showmatch       = true
set.matchtime       = 2
set.showtabline     = 1
set.laststatus      = 2
set.signcolumn      = 'number'

-- cursor line
set.cursorline      = true
set.cursorcolumn    = false
vim.cmd [[
    highlight CursorLine   guifg=None guibg=#0B2C1D
    highlight CursorColumn guifg=None guibg=#0B2C1D
]]

-- search settings
set.ignorecase      = false
set.smartcase       = true
set.hlsearch        = true
set.incsearch       = true

-- split defaults
set.splitright      = true
set.splitbelow      = false

-- tilde as operator
set.tildeop         = true
-- set number format for CTRL+A and CTRL+X
set.nrformats       = { 'alpha', 'hex', 'octal', 'bin' }

-- add <,> to matchpairs % jumping
set.matchpairs:append({'<:>'})

