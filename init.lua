require('base')
require('highlights')
require('maps')
require('plugins')
require('copilot')

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('macos')
end

if is_win then
  require('window')
end

-- Use Color Scheme
vim.cmd [[colorscheme dracula]]

-- Autoformat prettier
vim.cmd [[
  autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.html,*.json,*.css CocCommand prettier.formatFile
]]

-- Markdown
vim.cmd [[
  autocmd FileType markdown setlocal spell spelllang=pt_br
]]

vim.cmd [[
  autocmd FileType markdown setlocal nofoldenable
]]
