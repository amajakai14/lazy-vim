return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "jose-elias-alvarez/typescript.nvim",
    init = function()
      require("lazyvim.util").lsp.on_attach(function(client, buffer)
        -- Configure diagnostics to show virtual text
        vim.diagnostic.config({
          virtual_text = true,
        })

        -- Set up key mapping for opening diagnostics float
        local opts = { buffer = buffer, noremap = true, silent = true, desc = "Open diagnostics float" }
        vim.keymap.set("n", "<leader>vd", function()
          vim.diagnostic.open_float()
        end, opts)

        vim.keymap.set("n", "gt", function()
          vim.lsp.buf.type_definition()
        end)
      end)
    end,
  },
  opts = {
    servers = {
      tsserver = {},
    },
    setup = {
      tsserver = function(_, opts)
        require("typescript").setup({ server = opts })
        return true
      end,
    },
  },
}
