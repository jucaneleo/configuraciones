vim.keymap.set("n", "<leader>s", ":lua require('leap').leap { my_custom_flag = true, ... } <CR>")
vim.keymap.set("n", "<leader>a", ":lua require('leap').leap { backward = true, ... } <CR>")

