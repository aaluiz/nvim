local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a work backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-s>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

--Move window
keymap.set('n', '<Space>', 'C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

--Escape
keymap.set('i', 'jj', '<Esc>')
keymap.set('i', 'kj', '<Esc>')
keymap.set('i', 'jk', '<Esc>')
keymap.set('i', 'kk', '<Esc>')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w>>')
keymap.set('n', '<C-w><right>', '<C-w><')
keymap.set('n', '<C-w><down>', '<C-w>-')
keymap.set('n', '<C-w><up>', '<C-w>+')

-- Saga
keymap.set('n', 'gr', '<cmd>Lspsaga rename<cr>', { silent = true, noremap = true })
keymap.set('n', 'gx', "<cmd>Lspsaga code_action<cr>", { silent = true, noremap = true })
keymap.set('x', 'gx', ":<c-u>Lspsaga range_code_action<cr>", { silent = true, noremap = true })
keymap.set('n', 'K', "<cmd>Lspsaga hover_doc<cr>", { silent = true, noremap = true })
keymap.set('n', 'go', "<cmd>Lspsaga show_line_diagnostics<cr>", { silent = true, noremap = true })
keymap.set('n', 'gj', "<cmd>Lspsaga diagnostic_jump_next<cr>", { silent = true, noremap = true })
keymap.set('n', 'gk', "<cmd>Lspsaga diagnostic_jump_prev<cr>", { silent = true, noremap = true })
keymap.set('n', '<C-u>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
keymap.set('n', '<C-d>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})
keymap.set('n', "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })

-- Debug
keymap.set('n', 'db', ":lua require'dap'.toggle_breakpoint()<cr>", { silent = true })
keymap.set('n', '<F5>', ":lua require'dap'.continue()<cr>", { silent = true })
keymap.set('n', '<F10>', ":lua require'dap'.step_over()<cr>", { silent = true })
keymap.set('n', '<F11>', ":lua require'dap'.step_into()<cr>", { silent = true })
keymap.set('n', '<F4>', ":lua require'dap'.terminate()<cr>", { silent = true })
