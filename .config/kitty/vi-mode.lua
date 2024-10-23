local api = vim.api
local M = {}

-- Function to create a terminal from the current buffer's content
function M.create_terminal_from_buffer()
	local orig_buf = api.nvim_get_current_buf()

	-- Create a new terminal buffer
	local term_buf = api.nvim_create_buf(false, true)

	-- Set the terminal buffer options
	vim.bo[term_buf].scrollback = 100000
	api.nvim_set_current_buf(term_buf)

	-- Open a terminal channel
	local term_chan = api.nvim_open_term(term_buf, {})

	-- Send original buffer content to the terminal
	local lines = api.nvim_buf_get_lines(orig_buf, 0, -1, true)
	api.nvim_chan_send(term_chan, table.concat(lines, "\r\n"))

	-- Close the channel to finalize input
	vim.fn.chanclose(term_chan)

	-- Restore original buffer and delete the terminal buffer
	api.nvim_buf_set_lines(orig_buf, 0, -1, true, api.nvim_buf_get_lines(term_buf, 0, -1, true))
	api.nvim_set_current_buf(orig_buf)
	api.nvim_buf_delete(term_buf, { force = true })

	-- Set the modified flag and cursor position
	vim.bo.modified = false
	api.nvim_win_set_cursor(0, { api.nvim_buf_line_count(orig_buf), 0 })
end

-- Function to colorize output in a new terminal buffer
function M.colorize()
	local orig_buf = api.nvim_get_current_buf()
	local lines = api.nvim_buf_get_lines(orig_buf, 0, -1, false)

	-- Remove trailing empty lines
	while #lines > 0 and vim.trim(lines[#lines]) == "" do
		table.remove(lines)
	end

	-- Create a new buffer for colorized output
	local buf = api.nvim_create_buf(false, true)
	local channel = api.nvim_open_term(buf, {})

	-- Send lines to the terminal buffer
	api.nvim_chan_send(channel, table.concat(lines, "\r\n"))
	api.nvim_set_current_buf(buf)

	-- Set keymap to quit the terminal buffer
	vim.keymap.set("n", "q", "<cmd>qa!<cr>", { silent = true, buffer = buf })

	-- Stop insert mode when entering the terminal
	api.nvim_create_autocmd("TermEnter", {
		buffer = buf,
		command = "stopinsert",
	})

	-- Go to insert mode after a short delay
	vim.defer_fn(function()
		vim.cmd.startinsert()
	end, 10)
end

return M
