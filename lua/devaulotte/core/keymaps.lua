-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------
-- source current file
keymap.set("n", "<Leader><space>", "<CMD>source %<CR>", { desc = "Source current file" })

-- close current buffer
keymap.set("n", "<Leader>c", "<CMD>bd<CR>", { desc = "Close current buffer" })

-- use Ctrl c to exit insert mode
keymap.set("i", "<C-c>", "<ESC>", { desc = "Exit insert mode" })

-- Editor shortcut
keymap.set("n", "<C-q>", "<CMD>qa<CR>", { desc = "Quit all files" })
keymap.set("n", "<C-s>", "<CMD>w<CR>", { desc = "Save file" })

-- clear search highlights
keymap.set("n", "<Leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<ESC>", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x', { desc = "Delete single character without copying into register" })

-- increment/decrement numbers
keymap.set("n", "<Leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<Leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<Leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<Leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<Leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<Leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- tab management
keymap.set("n", "<Leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<Leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<Leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<Leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<Leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Motions
keymap.set("n", "<C-d>", "<C-d>zz<CR>", { desc = "Move half page down with curser centered" })
keymap.set("n", "<C-u>", "<C-u>zz<CR>", { desc = "Move half page up with curser centered" })
keymap.set("n", "n", "nzzzv", { desc = "Move to next search result with cursor centered" })
keymap.set("n", "N", "Nzzzv", { desc = "Move to previous search result with cursor centered" })

-- Move lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down in visual mode" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up in visual mode" })

-- Search
keymap.set(
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search and replace what's under the cursor" }
)

-- Manage sessions & projects with tmux
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Open tmux sessionizer" })

-- Paste and keep in clipboard
keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete and keep into register" })

-- Toggle Zen mode
keymap.set("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "Toggle Zen mode" })

-- Git Fugitive shortcuts
keymap.set("n", "<leader>gs", "<cmd>Git<CR>", { desc = "Open git status" })
keymap.set("n", "<leader>gd", "<cmd>Gdiffsplit<CR>", { desc = "Open git diff" })
keymap.set("n", "<leader>gc", "<cmd>Git commit<CR>", { desc = "Open git commit" })
keymap.set("n", "<leader>gp", "<cmd>Git push<CR>", { desc = "Open git push" })
keymap.set("n", "<leader>gl", "<cmd>Git pull<CR>", { desc = "Open git pull" })
keymap.set("n", "<leader>gb", "<cmd>Git blame<CR>", { desc = "Open git blame" })
keymap.set("n", "<leader>gr", "<cmd>Gread<CR>", { desc = "Open git read" })
keymap.set("n", "<leader>gw", "<cmd>Gwrite<CR>", { desc = "Open git write" })
keymap.set("n", "<leader>ge", "<cmd>Gedit<CR>", { desc = "Open git edit" })
keymap.set("n", "<leader>gt", "<cmd>GitGutterToggle<CR>", { desc = "Toggle git gutter" })

-- Lazy shortcuts
keymap.set("n", "<Leader>pl", "<cmd>Lazy<CR>", { desc = "Open Lazy" })
keymap.set("n", "<Leader>ps", "<cmd>Lazy sync<CR>", { desc = "Synchronize Lazy" })
keymap.set("n", "<Leader>pc", "<cmd>Lazy clear<CR>", { desc = "Clear Lazy" })
keymap.set("n", "<Leader>pr", "<cmd>Lazy reload<CR>", { desc = "Reload Lazy" })
keymap.set("n", "<Leader>pu", "<cmd>Lazy update<CR>", { desc = "Update Lazy" })
