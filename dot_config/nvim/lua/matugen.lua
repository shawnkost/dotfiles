local M = {}

function M.setup()
  require("base16-colorscheme").setup({
    base00 = "#1a110f",
    base01 = "#271d1b",
    base02 = "#322825",
    base03 = "#a08c88",
    base04 = "#d8c2bd",
    base05 = "#f1dfdb",
    base06 = "#f1dfdb",
    base07 = "#f1dfdb",
    base08 = "#ffb4ab",
    base09 = "#dbc58c",
    base0A = "#e7bdb4",
    base0B = "#ffb4a4",
    base0C = "#dbc58c",
    base0D = "#ffb4a4",
    base0E = "#e7bdb4",
    base0F = "#93000a",
  })
end

local signal = vim.uv.new_signal()
signal:start(
  "sigusr1",
  vim.schedule_wrap(function()
    package.loaded["matugen"] = nil
    require("matugen").setup()
  end)
)

return M
