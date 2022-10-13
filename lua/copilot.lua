-- use this tablle to disable copilot for specific filetypees
vim.g.copilot_filetypes = { xml = false, markdown = false }

vim.cmd [[highlight CopilotSuggestions ctermfg=8 guifg=#555555 ]]
