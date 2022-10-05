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
    
    use { 'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function()
            require('telescope').setup {}
        end,
    }

    use { 'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup {}
        end,
    }
end)
