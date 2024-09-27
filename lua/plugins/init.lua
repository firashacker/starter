return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
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
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "tailwindcss-language-server",
        "prettierd",
        "typescript-language-server",
      },
    },
  },
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup {
        user_default_options = {
          tailwind = true,
          RGB = true,
          RRGGBB = true,
          RRGGBBAA = true,
          AARRGGBB = true,
          hsl_fn = true,
          rgb_fn = true,
        },
      }
      filetypes = {
        "*", -- Highlight all files, but customize some others.
        cmp_docs = { always_update = true },
      }
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
    },
    opts = {
      enable_close = true, -- Auto close tags
      enable_rename = true, -- Auto rename pairs of tags
      enable_close_on_slash = true, -- Auto close on trailing </
    },
    config = function()
      require("nvim-ts-autotag").setup() -- can pass opts here like this { opts }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      opts = require "configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "tsx",
      }
      return opts
    end,
  },
}
