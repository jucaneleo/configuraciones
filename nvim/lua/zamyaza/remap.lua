vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "{", ":")
vim.keymap.set("n", "11", ":q!<CR>")
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>2", vim.cmd.wq)
vim.keymap.set("n", "<leader>t", ":b#<CR>")



-- nevos mappings para f comand
vim.keymap.set("n", "<C-l>", "<Nop>", { silent = true, remap = false })
vim.keymap.set("n", "<C-l>", ";")
vim.keymap.set("n", "<C-h>", "<Nop>", { silent = true, remap = false })
vim.keymap.set("n", "<C-h>", ",")

---netrw remaping

vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  desc = 'Mapeos decentes para netrw',
  callback = function()
    local bind = function(lhs, rhs)
      vim.keymap.set('n', lhs, rhs, {remap = true, buffer = true})
    end 

    bind('n', '%')

    bind('r', 'R')

    bind('l', '<CR>')

    bind('h', '-')
  end
})

