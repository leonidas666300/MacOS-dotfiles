local map = vim.keymap -- for conciseness

----------------------- General Keymaps -----------------------

-- use jk to exit insert mode
map.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
map.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
map.set("n", "<leader>.", "<C-a>", { desc = "Increment number" })
map.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
map.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
map.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
map.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
map.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current splits" })

map.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
map.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
map.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
map.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
map.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
