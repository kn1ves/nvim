return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
    event = { "BufreadPre", "BufNewFile" },
    config = function()
        require("configs.treesitter")
    end,
  },

  {
    "Hoffs/omnisharp-extended-lsp.nvim",
    lazy = true,  -- Loads only when needed
    -- config = function()
    --   require("omnisharp_extended").setup()
    -- end,
  },
}
