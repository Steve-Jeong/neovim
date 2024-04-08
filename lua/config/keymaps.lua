local mapKey = require("utils.keyMapper").mapKey


-- Neotree toggle
mapKey('<leader>e', ':Neotree toggle<cr>')

-- pane navigation
mapKey('<C-h>', '<C-w>h')  -- Left (Ctrl+h를 누르면, Ctrl+w,h를 누른 효과)
mapKey('<C-Left>', '<C-w>h')  -- Left (Ctrl+h를 누르면, Ctrl+w,h를 누른 효과)
mapKey('<C-j>', '<C-w>j')  -- Down 
mapKey('<C-Down>', '<C-w>j')  -- Down 
mapKey('<C-k>', '<C-w>k')  -- Up
mapKey('<C-Up>', '<C-w>k')  -- Up
mapKey('<C-l>', '<C-w>l')  -- Right
mapKey('<C-Right>', '<C-w>l')  -- Right

-- clear search highlight
mapKey('<leader>h', ':nohlsearch<CR>')

-- inoremap jk <Esc>
mapKey('jk', '<Esc>', 'i', {noremap = true})

-- >>>=== line number setting start ===
-- Set relative line numbers in normal mode
vim.opt.relativenumber = true

-- Set absolute line numbers in insert mode
vim.api.nvim_create_augroup("SetLineNumbers", {})
vim.api.nvim_create_autocmd({"InsertEnter"}, {
    group = "SetLineNumbers",
    callback = function()
        vim.opt.relativenumber = false
        vim.opt.number = true
    end
})

-- Restore relative line numbers when leaving insert mode
vim.api.nvim_create_autocmd({"InsertLeave"}, {
    group = "SetLineNumbers",
    callback = function()
        vim.opt.relativenumber = true
        vim.opt.number = true
    end
})
-- <<<=== line number setting end ===

-- indent / unindent
mapKey('<', 'v<<Esc>', 'n')
mapKey('>', 'v><Esc>', 'n')
mapKey('<', '<gv', 'v')
mapKey('>', '>gv', 'v')


