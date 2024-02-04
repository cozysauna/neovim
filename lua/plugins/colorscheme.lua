return {
  { -- colorscheme
      'folke/tokyonight.nvim',
  },
  {
	'w0ng/vim-hybrid',
	config = function()
	  vim.cmd([[ colorscheme hybrid ]])
	end
  },
  {
      'chriskempson/vim-tomorrow-theme',
  },
  {
      'mhinz/vim-janah',
  },
  {
      'cocopon/iceberg.vim',
  }
}
