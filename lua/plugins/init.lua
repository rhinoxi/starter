return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "nvimtools/none-ls.nvim",
        config = function()
          require "configs.none-ls"
        end,
      },
    },
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require "configs.telescope"
    end,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "markdown",
        "go",
        "rust",
        "python",
      },
      indent = {
        enable = true,
        disable = {
          "python",
        },
      },
    },
  },
  {
    "smoka7/hop.nvim",
    lazy = false,
    -- branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
    end,
  },
  {
    "folke/trouble.nvim",
    lazy = false,
    opts = {},
  },
  {
    "kevinhwang91/nvim-bqf",
    ft = "qf",
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "configs.dap"
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    lazy = false,
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require "configs.dap-ui"
    end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "nvim-dap",
    config = function()
      require("dap-go").setup()
      -- require("dap.ext.vscode").load_launchjs()
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = "nvim-dap",
    config = function()
      require("dap-python").setup()
      -- require("dap.ext.vscode").load_launchjs()
    end,
  },
}
