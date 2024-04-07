local mapKey = require("utils.keyMapper").mapKey

return { 
  "easymotion/vim-easymotion",
  config = function()
    -- Disable default mappings
    vim.g.EasyMotion_do_mapping = 0

    -- Jump to anywhere you want with minimal keystrokes, with just one key binding.
    -- `s{char}{label}`
    mapKey('s', '<Plug>(easymotion-overwin-f)', 'n', {noremap = true})

    -- or
    -- `s{char}{char}{label}`
    -- Need one more keystroke, but on average, it may be more comfortable.
    mapKey('S', '<Plug>(easymotion-overwin-f2)', 'n', {noremap = true})

    -- Turn on case-insensitive feature
    vim.g.EasyMotion_smartcase = 1
  end,
}
