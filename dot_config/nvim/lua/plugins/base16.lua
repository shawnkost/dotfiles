return {
  "RRethy/base16-nvim",
  enabled = false,
  priority = 2000,
  config = function()
    require("matugen").setup()
  end,
}
