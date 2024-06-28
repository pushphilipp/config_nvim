return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        --here language servers need to be defined
        ensure_installed = {"lua_ls", "pyright", }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
    local lspconfig = require("lspconfig")
    lspconfig.pyright.setup({})
    --vim.keymap.set('n','K', vim.lsp.buf.hover,{})
    --vim.keymap.set('n','gd', vim.lsp.buf.definition,{})
    --vim.keymap.set({'n'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end

  }
}


