
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
end)
