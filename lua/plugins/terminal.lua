return {
    'akinsho/toggleterm.nvim',
    config = function() 
    require("toggleterm").setup{
	open_mapping = [[<C-j>]],
	-- command + j が効かない...
	-- open_mapping = [[<D-j>]],
    }
    end
}
