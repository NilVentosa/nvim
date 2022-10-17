local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)

    -- packet itself
    use 'wbthomason/packer.nvim'

    -- lsp, completion, etc...
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'saadparwaiz1/cmp_luasnip'    
    use 'L3MON4D3/LuaSnip'
    use 'nvim-treesitter/nvim-treesitter'
    use 'bash-lsp/bash-language-server'
    use 'mfussenegger/nvim-jdtls'

    -- themes
    use 'doums/darcula'
    use 'tanvirtin/monokai.nvim'
    use 'Mofiqul/dracula.nvim'

    -- other stuff
    use 'tomtom/tcomment_vim'
    use 'Raimondi/delimitMate'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 
            'kyazdani42/nvim-web-devicons', opt = true 
        }
    }
    use {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.0',
        requires = { 
            {'nvim-lua/plenary.nvim'},
            {'BurntSushi/ripgrep'},
            {'nvim-telescope/telescope-fzy-native.nvim'},
            {'nvim-telescope/telescope-file-browser.nvim'}
        }
    }
    use {
        'ggandor/leap.nvim',
        requires = {
            'tpope/vim-repeat'
        }
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)

