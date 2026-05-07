
local use = require('packer').use

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use "EdenEast/nightfox.nvim"
    use "neovim/nvim-lspconfig"
    use 'windwp/nvim-projectconfig'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
      "ray-x/lsp_signature.nvim",
    }
    use "airblade/vim-gitgutter"
    use "elixir-editors/vim-elixir"
    -- use "lankavitharana/ballerina-vim"
    use { 
        "KRVPerera/ballerina-vim",
        branch = "stable"
    }
    use 'junegunn/fzf.vim'
    use {
        'junegunn/fzf',
        run = function() 
            vim.fn['fzf#install']()
        end
    }
    use 'preservim/NERDTree'
    use 'voldikss/vim-floaterm'
    use 'dense-analysis/ale'
    use 'farmergreg/vim-lastplace'

    -- -- Required plugins for avante
    -- use 'nvim-lua/plenary.nvim'
    -- use 'MunifTanjim/nui.nvim'
    -- -- use 'MeanderingProgrammer/render-markdown.nvim'

    -- -- Optional dependencies for avante
    -- use 'hrsh7th/nvim-cmp'
    -- use 'nvim-tree/nvim-web-devicons' -- or use 'echasnovski/mini.icons'
    -- use 'HakonHarnes/img-clip.nvim'
    -- use 'zbirenbaum/copilot.lua'
    -- use 'stevearc/dressing.nvim' -- for enhanced input UI
    -- use 'folke/snacks.nvim' -- for modern input UI

    -- -- Avante.nvim with build process
    -- use {
    --   'yetone/avante.nvim',
    --   branch = 'main',
    --   run = 'make',
    --   config = function()
    --     require('avante').setup({})
    --   end
    -- }
end)
