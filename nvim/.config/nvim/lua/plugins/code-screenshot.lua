return {
	{
		"ellisonleao/carbon-now.nvim",
		lazy = true,
		cmd = "CarbonNow",
		opts = {},
	},
	{
		"michaelrommel/nvim-silicon",
		cmd = "Silicon",
		keys = {
			{ "<leader>sc", ":Silicon<CR>", mode = "x", desc = "snapshot code" },
		},
		opts = {
			theme = "Dracula",
			window_title = function()
				return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
			end,
		},
	},
}
