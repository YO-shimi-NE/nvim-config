--require'fzf-lua'.files({ cmd = "find -type f -not -path '*/node_modules/*' -printf '%P\n'" })

vim.api.nvim_set_keymap('n', ' ff', [[<cmd>lua require('fzf-lua').files({ cmd = "find -type f -not -path '*/node_modules/*' -not -path '*/.git/*' -printf '%P\n'" })<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ' fb', "<cmd>lua require('fzf-lua').buffers()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ' fp', [[<cmd>lua require('fzf-lua').grep_project({ cmd = "grep -R --exclude-dir='node_modules' --exclude-dir='log' --exclude-dir='.git' " })<CR>]], { noremap = true, silent = true })
