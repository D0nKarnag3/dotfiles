-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- General Keymaps -------------------

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Move selected lines with shift+j or shift+k
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join line while keeping the curser in the same position
keymap.set("n", "J", "mzJ`z")

-- Keep cursor centered while scrolling up and down
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Next and previous instance of the highligted letter
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Better paste (prevents new paste buffer)
keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- Delete to void register
keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to void register" } )

-- Fixed ctr+c weirdness to exit from vertical select mode
keymap.set("i", "<C-c>", "<Esc>")

-- Delete shift+q keymap
keymap.set("n", "Q", "<nop>")

-- Quickfix navigation
keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Search and replace current position word
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search and replace current position word" })

-- Make file executable
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make file executable" })

-- Undotree
keymap.set("n", "<leader>uu", vim.cmd.UndotreeToggle, { desc = "Undotree toggle" })

-- Oil
keymap.set("n", "<leader>e", "<cmd>lua require('oil').toggle_float()<CR>", { desc = "Oil" })

-- Twilight
keymap.set("n", "<leader>tt", "<cmd>Twilight<CR>", { desc = "Toggle Twilight" })

-- Zen mode
keymap.set("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "Toggle ZenMode" })

-- Harpoon
--local mark = require("harpoon.mark")
--local ui = require("harpoon.ui")

--keymap.set("n", "<leader>ha", mark.add_file, { desc = "Harpoon file" })
--keymap.set("n", "<leader>he", ui.toggle_quick_menu, { desc = "Harpoon quick menu" })

keymap.set("n", "<leader>h1", function()
	ui.nav_file(1)
end)
keymap.set("n", "<leader>h2", function()
	ui.nav_file(2)
end)
keymap.set("n", "<leader>h3", function()
	ui.nav_file(3)
end)
keymap.set("n", "<leader>h4", function()
	ui.nav_file(4)
end)
