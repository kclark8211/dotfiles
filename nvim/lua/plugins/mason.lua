return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- Automatically update Mason registry
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason").setup()

      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright" }, -- Add LSP servers you want here
        automatic_installation = true,
      })

      local lspconfig = require("lspconfig")
      local capabilities = vim.lsp.protocol.make_client_capabilities()

      local on_attach = function(_, bufnr)
        local opts = { noremap = true, silent = true, buffer = bufnr }

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      end

      lspconfig.pyright.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })

    end,
  },
}

