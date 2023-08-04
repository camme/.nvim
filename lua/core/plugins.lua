require('lazy').setup({
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  'levelone/tequila-sunrise.vim',
  'nvim-treesitter/nvim-treesitter',
  {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.2',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-compe',
  'mhartington/oceanic-next',
  'github/copilot.vim',
  {
      "jackMort/ChatGPT.nvim",
      event = "VeryLazy",
      config = function()
          require("chatgpt").setup()
      end,
      dependencies = {
          "MunifTanjim/nui.nvim",
          "nvim-lua/plenary.nvim",
          "nvim-telescope/telescope.nvim"
      }
  },
  {
      'folke/trouble.nvim',
      dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
      },
  }
})
