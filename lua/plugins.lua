vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer сам себя
    use 'wbthomason/packer.nvim'

    -- Цветовая схема
    use 'joshdick/onedark.vim'

    --- Информационная строка внизу
    use { 'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function()
          require('lualine').setup()
        end,
    }
    
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('telescope').setup {}
        end,
    }

    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup {}
        end,
    }

    use {
        'kyazdani42/nvim-web-devicons'
    }

    use {
        "akinsho/toggleterm.nvim", tag = '*',
        config = function()
            require("toggleterm").setup()
        end,
    }

    
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            vim.opt.termguicolors = true
            require("bufferline").setup()
        end,
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        config = function()
            require("nvim-tree").setup()
        end,
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
end)
