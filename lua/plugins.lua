local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{
    "EdenEast/nightfox.nvim";
    "neovim/nvim-lspconfig";
    "windwp/nvim-projectconfig";
    {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    };
    "ray-x/lsp_signature.nvim";
    "airblade/vim-gitgutter";
    "farmergreg/vim-lastplace";
    "dense-analysis/ale";
    -- "elixir-editors/vim-elixir"
    -- { 
    --     "KRVPerera/ballerina-vim",
    --     branch = "stable"
    -- }
    -- 'junegunn/fzf.vim'
    -- {
    --     'junegunn/fzf',
    --     run = function() 
    --         vim.fn['fzf#install']()
    --     end
    -- }
    -- 'preservim/NERDTree'
    -- 'voldikss/vim-floaterm'
    -- {
    --   'yetone/avante.nvim',
    --   branch = 'main',
    --   run = 'make',
    --   requires = {
    --     'nvim-lua/plenary.nvim',
    --     'MunifTanjim/nui.nvim',
    --     -- 'MeanderingProgrammer/render-markdown.nvim',
    --     'hrsh7th/nvim-cmp',
    --     'nvim-tree/nvim-web-devicons', -- or use 'echasnovski/mini.icons'
    --     'HakonHarnes/img-clip.nvim',
    --     'zbirenbaum/copilot.lua',
    --     'stevearc/dressing.nvim',-- for enhanced input UI
    --     'folke/snacks.nvim', -- for modern input UI
    --   },
    --   config = function()
    --     require('avante').setup(
    --         require('avante-config')
    --     )
    --   end
    -- }
}
