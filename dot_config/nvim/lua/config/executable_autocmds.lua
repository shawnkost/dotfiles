-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("VtslsRemoveUnusedImportsOnSave", { clear = true }),
  pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" },
  callback = function(args)
    for _, client in ipairs(vim.lsp.get_clients({ bufnr = args.buf, name = "vtsls" })) do
      client:request_sync("workspace/executeCommand", {
        command = "typescript.removeUnusedImports",
        arguments = { vim.api.nvim_buf_get_name(args.buf) },
      }, 1000, args.buf)
    end
  end,
})
