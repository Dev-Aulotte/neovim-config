-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------
-- use Ctrl c to exit insert mode
keymap.set("i", "<C-c>", "<ESC>", { desc = "Exit insert mode" })

-- Editor shortcut
keymap.set("n", "<C-q>", "<CMD>qa<CR>", { desc = "Quit all files" })
keymap.set("n", "<C-s>", "<CMD>w<CR>", { desc = "Save file" })

-- clear search highlights
keymap.set("n", "<Leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<ESC>", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<Leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<Leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<Leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<Leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<Leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<Leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<Leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<Leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<Leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<Leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<Leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Motions
keymap.set("n", "<C-d>", "<C-d>zz<CR>")
keymap.set("n", "<C-u>", "<C-u>zz<CR>")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Search
keymap.set(
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search and replace what's under the cursor" }
)

-- Paste and keep in clipboard
keymap.set({ "n", "v" }, "<leader>d", [["_d]])
