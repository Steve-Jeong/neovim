return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      -- renderer = {
      --   keymap = {
      --     space = "<SPACE>",
      --   },
      -- },
    })
    -- vim.keymap.set('n', '<SPACE>',    api.node.open.edit,                  opts('Open'))
    -- local nvim_tree_callback = require("nvim-tree.utils").nvim_tree_callback
    -- vim.keymap.set('n', '<SPACE>', nvim_tree_callback("edit"))
  end,
}
