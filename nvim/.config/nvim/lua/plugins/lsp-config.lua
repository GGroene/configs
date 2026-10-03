return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			ensure_installed = { "lua_ls", "eslint" },
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local servers = {
				"ts_ls", "eslint", "jsonls", "html", "cssls", "lua_ls",
				"pylsp", "jdtls", "gopls", "clangd", "zls", "rust_analyzer", "marksman",
			}
			for _, server in ipairs(servers) do
				vim.lsp.config(server, { capabilities = capabilities })
			end

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP info hover" })
			vim.keymap.set("n", "<leader>gd", require('telescope.builtin').lsp_definitions, { desc = "LSP goto definition" })
			vim.keymap.set("n", "<leader>gi", require('telescope.builtin').lsp_implementations, { desc = "LSP goto implementations" })
			vim.keymap.set("n", "<leader>gr", require('telescope.builtin').lsp_references, { desc = "LSP goto references" })
			vim.keymap.set("n", "<leader>gc", vim.lsp.buf.code_action, { desc = "LSP code action" })
			vim.keymap.set("n", "<leader>gn", vim.lsp.buf.rename, { desc = "LSP rename" })
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "LSP formatting" })
			vim.keymap.set("n", "<leader>gee", vim.diagnostic.open_float, { desc = "LSP float diagnostic" })
			vim.keymap.set("n", "<leader>ged", require('telescope.builtin').diagnostics, { desc = "LSP telescope diagnostic" })

			vim.diagnostic.config({ virtual_text = true })
			vim.keymap.set('n', '<leader>gv', function()
				local new_config = not vim.diagnostic.config().virtual_text
				vim.diagnostic.config({ virtual_text = new_config, virtual_lines = false })
			end, { desc = 'Toggle diagnostic virtual_text' })
			vim.keymap.set('n', '<leader>gV', function()
				local new_config = not vim.diagnostic.config().virtual_lines
				vim.diagnostic.config({ virtual_lines = new_config, virtual_text = false })
			end, { desc = 'Toggle diagnostic virtual_lines' })
		end,
	},
	{
		"j-hui/fidget.nvim",
		opts = {},
	},
}
