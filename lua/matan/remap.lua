vim.g.mapleader = " "

vim.keymap.set("n", "<leader>q", vim.cmd.Ex)
vim.keymap.set("n", "<leader>fs", vim.cmd.write) -- file save

vim.keymap.set("n", "<leader>fp", function() -- copy curr file path to clipboard
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
end)

vim.keymap.set("n", "<Enter>", "o<ESC>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") --move highlighted text around
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")       --takes the line below and appends it to this line without moving the cursor

vim.keymap.set("n", "<C-d>", "<C-d>zz") --keeps the cursor in place while jumping
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv") -- keeps the cursor in place while searching
vim.keymap.set("n", "N", "Nzzzv")


-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]]) -- keeps the pasted word in the buffer

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- yanks into the systems clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]) -- delets into the void


-- This is going to get me cancelled
vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format) -- formats


vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) --replace the word that you are on
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })              --turns into executable

vim.keymap.set("n", "<leader><leader>", function()                                       -- does :so (compile)
    vim.cmd("so")
end)
