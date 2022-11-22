return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- gruvbox theme
  use {
        "ellisonleao/gruvbox.nvim",
        requires = {"rktjmp/lush.nvim"}
    }
   use  'ishan9299/nvim-solarized-lua'
   use  'sainnhe/sonokai'
    -- nvim-tree (新增)
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- bufferline
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
      -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }


--config = {
  --  proxy = {
    --  -- 如果你在中国大陆，推荐使用 'https://ghproxy.com'。否则，不要设置该配置项。
     -- github = 'https://ghproxy.com',
    --},
  --}

end)
