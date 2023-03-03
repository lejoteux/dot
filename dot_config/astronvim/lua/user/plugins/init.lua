return {
  -- you can disable default plugins as follows:
  -- ["goolord/alpha-nvim"] = { disable = true },

  -- you can also add new plugins here as well:
  ["karb94/neoscroll.nvim"] = {
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "neoscroll.nvim") end,
    config = function() require("user.plugins.neoscroll").config() end,
  },
}
