return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", 'nvim-telescope/telescope.nvim' },
    config = function ()
        local harpoon = require('harpoon')
        harpoon:setup({
            settings = {
                save_on_toggle = true
            }
        })

        -- Remaps
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
        vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

        -- Toggle previous & next buffers stored within Harpoon list
        -- Remaps
        vim.keymap.set("n", "<C-A-K>", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<C-A-J>", function() harpoon:list():next() end)
        -- basic telescope configuration
    end
}
