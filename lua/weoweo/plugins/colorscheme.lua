return {

    'neanias/everforest-nvim',
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
        local forest = require('everforest')
        forest.setup({
            backround = "hard",
            transparent_background_level = 2,
        })

        forest.load()
    end,
}
