local keyMapper = require('utils.keyMapper').mapKey

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },
	{
	  "williamboman/mason-lspconfig.nvim",
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { "lua_ls", "tsserver", "gopls", "cssls", "dockerls", 
          "docker_compose_language_service", "eslint", "html", "jsonls", "pylsp",
          "tailwindcss"}
      })
    end
	},
  {
    "neovim/nvim-lspconfig",
    config = function()  
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.gopls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.docker_compose_language_service.setup({})
      lspconfig.eslint.setup({})
      lspconfig.html.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.tailwindcss.setup({})

      keyMapper('K', vim.lsp.buf.hover)
      keyMapper('gd', vim.lsp.buf.definition)
      keyMapper('<leader>ca', vim.lsp.buf.code_action)
    end
  }
}
