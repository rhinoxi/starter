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
  {
    "olimorris/codecompanion.nvim",
    opts = {},
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    cmd = {"CodeCompanion", "CodeCompanionChat", "CodeCompanionActions", "CodeCompanionCmd"},
    config = function()
      require "configs.codecompanion"
    end,
  },
  {
    -- Make sure to set this up properly if you have lazy=true
    'MeanderingProgrammer/render-markdown.nvim',
    opts = {
      file_types = { "markdown", "codecompanion" },
      render_modes = true,
    },
    ft = { "markdown", "codecompanion" },
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require "configs.harpoon"
    end,
  },
  -- {
  --   "yetone/avante.nvim",
  --   event = "VeryLazy",
  --   version = false, -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
  --   opts = {
  --     -- add any opts here
  --     -- for example
  --     provider = "groq",
  --     vendors = {
  --       groq = {
  --         __inherited_from = "openai",
  --         api_key_name = "GROQ_API_KEY",
  --         endpoint = "https://api.groq.com/openai/v1/",
  --         -- model = "llama-3.3-70b-versatile",
  --         model = "deepseek-r1-distill-llama-70b",
  --       },
  --     },
  --   },
  --   -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  --   build = "make",
  --   -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --     "stevearc/dressing.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "MunifTanjim/nui.nvim",
  --     --- The below dependencies are optional,
  --     -- "echasnovski/mini.pick", -- for file_selector provider mini.pick
  --     "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
  --     "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
  --     -- "ibhagwan/fzf-lua", -- for file_selector provider fzf
  --     "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
  --     -- "zbirenbaum/copilot.lua", -- for providers='copilot'
  --     {
  --       -- support for image pasting
  --       "HakonHarnes/img-clip.nvim",
  --       event = "VeryLazy",
  --       opts = {
  --         -- recommended settings
  --         default = {
  --           embed_image_as_base64 = false,
  --           prompt_for_file_name = false,
  --           drag_and_drop = {
  --             insert_mode = true,
  --           },
  --           -- required for Windows users
  --           use_absolute_path = true,
  --         },
  --       },
  --     },
  --   },
  -- }
}
