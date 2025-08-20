return {
  "folke/neoconf.nvim",
  cmd = "Neoconf",
  config = function()
    require("neoconf").setup({
      local_settings = ".neoconf.json",
      global_settings = "neoconf.json",
      import = {
        vscode = true,
        coc = true,
        nlsp = true,
      },
      live_reload = true,
      filetype_jsonc = true,
    })
  end,
}