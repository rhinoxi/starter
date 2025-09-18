require("codecompanion").setup({
  strategies = {
    chat = {
      adapter = "gemini_cli",
    },
    inline = {
      adapter = "gemini_cli",
    },
    cmd = {
      adapter = "gemini_cli",
    },
  },
  adapters = {
    acp = {
      gemini_cli = function()
        return require("codecompanion.adapters").extend("gemini_cli", {
          defaults = {
            auth_method = "gemini-api-key",
          },
          env = {
            GEMINI_API_KEY = "GEMINI_API_KEY",
          },
        })
      end,
    },
  },
})
