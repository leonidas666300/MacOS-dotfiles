return {
	"hsteinshiromoto/todo.nvim",
	config = function()
		require("todo-nvim").setup({
			keymaps = {
				add_todo = "<localleader>ta", -- Add new todo
				toggle_todo = "<localleader>td", -- Toggle completion
				set_priority = "<localleader>tp", -- Set set_priority
				open_todo_list = "<localleader>tl", -- Open todo list
			},
		})
	end,
}
