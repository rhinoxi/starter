-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  "html",
  "cssls",
  "gopls",
  "rust_analyzer",
  "r_language_server",
  "gdscript",
  "pyright",
  -- "elixirls"
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.tsserver.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

lspconfig.elixirls.setup {
  cmd = { vim.fn.stdpath "data" .. "/mason/packages/elixir-ls/language_server.sh"},
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  settings = {
    ["elixirLS"] = {
      dialyzerEnabled = true,
    }
  }
}
