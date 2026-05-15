return {
  {
    "Shatur/neovim-session-manager",
    dependencies = {
      { "nvim-lua/plenary.nvim" }
    },
    opts = function()
      return {
        autoload_mode = require("session_manager.config").AutoloadMode.Disabled,
        autosave_ignore_filetypes = {
          "gitcommit",
        },
      }
    end,
  },
}
