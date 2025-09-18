local trouble = require("trouble.sources.telescope")

local telescope = require("telescope")

telescope.setup {
  defaults = {
    mappings = {
      i = { ["<c-t>"] = trouble.open },
      n = { ["<c-t>"] = trouble.open },
    },
    cache_picker = {
      num_pickers = 5,
    },
    file_ignore_patterns = {"vendor"},
  },
}

telescope.load_extension('fzf', 'themes')
