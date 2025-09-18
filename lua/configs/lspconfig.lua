-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- EXAMPLE
local servers = {
  "clangd",
  "html",
  "cssls",
  "gopls",
  "rust_analyzer",
  "r_language_server",
  "gdscript",
  "ruff",
  "pyright",
  "expert",
}

vim.lsp.enable(servers)
