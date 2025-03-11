return {
	{
		"akinsho/toggleterm.nvim",
		lazy = true,
		cmd = { "ToggleTerm" },
		keys = {
			-- Terminal thứ nhất ở dưới đáy
			{
				"<C-t>",
				function()
					require("toggleterm").toggle(1, 0, LazyVim.root.get(), "horizontal")
				end,
				desc = "ToggleTerm 1 (horizontal)",
			},
			-- Terminal thứ hai ở dưới đáy
			{
				"<C-y>",
				function()
					require("toggleterm").toggle(2, 0, LazyVim.root.get(), "horizontal")
				end,
				desc = "ToggleTerm 2 (horizontal)",
			},
			-- Terminal thứ ba ở dưới đáy
			{
				"<C-u>",
				function()
					require("toggleterm").toggle(3, 0, LazyVim.root.get(), "horizontal")
				end,
				desc = "ToggleTerm 3 (horizontal)",
			},
			-- Phím tắt để thoát chế độ Terminal và quay lại Normal mode
			{
				"<Esc>",
				"<C-\\><C-n>",
				mode = "t",
				desc = "Exit terminal mode",
			},
		},
		config = function()
			require("toggleterm").setup({
				size = function(term)
					if term.direction == "horizontal" then
						return 15
					elseif term.direction == "vertical" then
						return vim.o.columns * 0.4
					end
				end,
				open_mapping = [[<c-\>]],
				hide_numbers = true,
				shade_terminals = true,
				start_in_insert = true,
				insert_mappings = true,
				terminal_mappings = true,
				direction = "horizontal",
				persist_size = true,
				close_on_exit = true,
			})
			-- Tạo lệnh để mở cả 3 terminal cùng lúc
			vim.api.nvim_create_user_command("TermSplit3", function()
				-- Mở terminal 1
				require("toggleterm").toggle(1, 0, LazyVim.root.get(), "horizontal")
				vim.cmd("wincmd j") -- Di chuyển đến terminal vừa mở
				vim.cmd("wincmd h") -- Di chuyển sang trái
				vim.cmd("<C-\\><C-n>") -- Thoát chế độ insert

				-- Mở terminal 2
				require("toggleterm").toggle(2, 0, LazyVim.root.get(), "horizontal")
				vim.cmd("wincmd j")
				vim.cmd("<C-\\><C-n>")

				-- Mở terminal 3
				require("toggleterm").toggle(3, 0, LazyVim.root.get(), "horizontal")
				vim.cmd("wincmd j")

				-- Chia đều kích thước
				vim.cmd("wincmd =")
			end, {})

			-- Bạn cũng có thể thêm phím tắt cho lệnh này
			vim.api.nvim_set_keymap("n", "<Leader>ts", ":TermSplit3<CR>", { noremap = true, silent = true })
		end,
	},
}
