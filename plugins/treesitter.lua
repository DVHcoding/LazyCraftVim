return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		highlight = {
			enable = true,
			language_tree = true,
			is_supported = function()
				if vim.fn.strwidth(vim.fn.getline(".")) > 300 or vim.fn.getfsize(vim.fn.expand("%")) > 1024 * 1024 then
					return false
				else
					return true
				end
			end,
		},
	},
}

-- return {
-- 	{
-- 		"nvim-treesitter/nvim-treesitter",
-- 		opts = {
-- 			ensure_installed = {
-- 				"astro",
-- 				"cmake",
-- 				"cpp",
-- 				"css",
-- 				"fish",
-- 				"gitignore",
-- 				"go",
-- 				"graphql",
-- 				"http",
-- 				"java",
-- 				"rust",
-- 				"python",
-- 				"php",
-- 				"scss",
-- 				"sql",
-- 				"svelte",
-- 			},
-- 		},
-- 		config = function(_, opts)
-- 			require("nvim-treesitter.configs").setup(opts)
--
-- 			-- MDX
-- 			vim.filetype.add({
-- 				extension = {
-- 					mdx = "mdx",
-- 				},
-- 			})
-- 			vim.treesitter.language.register("markdown", "mdx")
-- 		end,
-- 	},
-- }
