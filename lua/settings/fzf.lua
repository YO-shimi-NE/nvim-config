vim.api.nvim_set_keymap('n', 'ff',
    "<cmd>lua require('fzf-lua').files()<CR>",
    { noremap = true, silent = true })
