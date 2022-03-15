local set = vim.opt

-- quick configs
local TAB_WIDTH             = 4
local EXPAND_TAB_TO_SPACES  = true
local TEXT_WIDTH            = 80

-- editor behaviour
set.encoding        = 'utf-8'
set.fileformats     = { "unix", "dos" }
set.path:append       { '**' }
set.wildmode        = { "list", "longest" }
set.mouse           = 'v'
set.clipboard       = { 'unnamed', 'unnamedplus' }
set.swapfile        = false
set.backup          = false
set.completeopt     = { 'menuone', 'noselect', 'noinsert'}
set.foldmethod      = 'marker'
set.splitright      = true
set.splitbelow      = true
set.ignorecase      = true
set.smartcase       = true
set.linebreak       = true
set.textwidth       = TEXT_WIDTH
set.wrap            = true
set.scrolloff       = 4
set.sidescrolloff   = 4
set.autoread        = true

set.matchpairs:append    { "<:>" }
set.nrformats:append     { 'octal', 'alpha' }
set.display:append       { 'uhex' }

-- UI
set.ruler           = true
set.laststatus      = 2
set.termguicolors   = true
set.number          = true
set.relativenumber  = true
set.showmatch       = true
set.colorcolumn     = "+1"
set.list            = true
set.listchars       = "trail:·"
set.cursorline      = true
set.cursorlineopt   = { 'screenline', 'number' }

-- Tabs, indent
set.tabstop     = 8
set.shiftwidth  = TAB_WIDTH
set.softtabstop = -1
set.expandtab   = EXPAND_TAB_TO_SPACES

set.smartindent = true
set.autoindent  = true

-- performance
set.hidden      = true
set.history     = 100
set.lazyredraw  = true
set.synmaxcol   = 256

-- autocommands

local cmd  = vim.cmd
local exec = vim.api.nvim_exec

-- delete trailing spaces on save
cmd [[au BufWritePre * :%s/\s\+$//e]]

-- Highlight on yank
exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=500}
  augroup end
]], false)

-- Don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- Open a terminal pane at bottom using :Term
cmd [[command! Term :bel split term://$SHELL]]

--- enter insert mode when switching to terminal
--- close terminal buffer on process exit
cmd [[
    autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
    autocmd TermOpen * startinsert
    autocmd BufLeave term://* stopinsert
]]


