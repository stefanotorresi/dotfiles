-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("CursorMoved", {
  desc = "Keep * synced with selection",
  callback = function()
    local mode = vim.fn.mode(false)
    if mode == "v" or mode == "V" or mode == "\22" then
      vim.fn.setreg("*", vim.fn.getregion(vim.fn.getpos("."), vim.fn.getpos("v"), { type = mode }))
    end
  end,
})
