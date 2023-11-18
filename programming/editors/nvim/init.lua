--------------
-- OPTIONS ---
--------------

-- Global Options
global = vim.g
global.background = 'dark'
global.backspace = 'indent,eol,start'
global.belloff = 'all'
global.casemap = 'internal,keepascii'
global.confirm = true
global.hlsearch = true
global.ignorecase = true
global.splitright = true
global.splitbelow = true
global.smarttab = true
global.showmode = true
global.smartcase =  true
global.mapleader = ' '

-- Enivironment Options
env = vim.env

-- Window Options
window = vim.wo
window.breakindent = true
window.cursorline = true
window.number = true
window.wrap =  true

-- Buffer Options
buffer = vim.bo
buffer.autoindent = true
buffer.autoread = true
buffer.commentstring = '/*%s*/'
buffer.expandtab = false
buffer.shiftwidth = 4
buffer.softtabstop = 4
buffer.smartindent = true
buffer.tabstop = 8
