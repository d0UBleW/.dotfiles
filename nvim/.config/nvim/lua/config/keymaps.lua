local Util = require("util.lazyvim")
local status_ok_km, keymap = pcall(require, "util.keymaps")

if not status_ok_km then
	return
end

local nnoremap = keymap.nnoremap
local vnoremap = keymap.vnoremap
local xnoremap = keymap.xnoremap
local onoremap = keymap.onoremap
local cmap = keymap.cmap

cmap("<C-a>", "<home>", { desc = "Go to beginning of line" })
cmap("<C-e>", "<end>", { desc = "Go to end of line" })

local status_ok_toggle, toggle = pcall(require, "util.toggle")
if status_ok_toggle then
	nnoremap("<leader>mm", toggle.toggle_bg, { desc = "Toggle Light/Dark Mode" })
end

nnoremap("<esc>", "<cmd>noh<CR><esc>", { desc = "Escape and clear hlsearch" })
nnoremap("k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
nnoremap("j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")

nnoremap("-", vim.cmd.Ex, { desc = "Open NetRW" })

nnoremap("<leader>U", vim.cmd.UndotreeToggle, { desc = "Toggle Undotree" })
nnoremap("<leader>uw", "<cmd>set wrap!<CR>", { desc = "Toggle line wrap" })
nnoremap("<leader>ul", "<cmd>set nu! rnu!<CR>", { desc = "Toggle line number" })
nnoremap("<leader>uf", require("plugins.lsp.format").toggle, { desc = "Toggle format on Save" })
nnoremap("<leader>ud", require("util.lazyvim").toggle_diagnostics, { desc = "Toggle format on Save" })
if vim.lsp.inlay_hint then
	nnoremap("<leader>uh", function()
		vim.lsp.inlay_hint(0, nil)
	end, { desc = "Toggle Inlay Hints" })
end

nnoremap("<leader>h", "<cmd>wincmd h<CR>", { desc = "Select left window" })
nnoremap("<leader>j", "<cmd>wincmd j<CR>", { desc = "Select lower window" })
nnoremap("<leader>k", "<cmd>wincmd k<CR>", { desc = "Select upper window" })
nnoremap("<leader>l", "<cmd>wincmd l<CR>", { desc = "Select right window" })

if Util.has("bufferline.nvim") then
	nnoremap("<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
	nnoremap("<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
	nnoremap("[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
	nnoremap("]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
else
	nnoremap("<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
	nnoremap("<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
	nnoremap("[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
	nnoremap("]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
end

nnoremap("<leader><tab>", "<cmd>e #<CR>", { desc = "Switch to last buffer" })
nnoremap("<tab>", "<cmd>tabnext<CR>", { desc = "Next tab" })
nnoremap("<S-tab>", "<cmd>tabprevious<CR>", { desc = "Prev tab" })
nnoremap("<leader>te", "<cmd>tabedit<CR>", { desc = "New tab" })

nnoremap("co", "<cmd>copen<CR>", { desc = "Open quickfix list" })
nnoremap("cc", "<cmd>cclose<CR>", { desc = "Close quickfix list" })
nnoremap("cn", "<cmd>cnext<CR>", { desc = "Next quickfix list" })
nnoremap("cp", "<cmd>cprev<CR>", { desc = "Prev quickfix list" })

--[[ nnoremap("<leader>j", "<cmd>lprev<CR>zz") ]]
--[[ nnoremap("<leader>k", "<cmd>lnext<CR>zz") ]]

-- nnoremap("<leader>sr", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<left><left><left>")
nnoremap("<leader>cx", "<cmd>!chmod +x %<CR>", { silent = true, desc = "chmod +x" })

vnoremap("<C-j>", "J", { desc = "Join lines" })
vnoremap("J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vnoremap("K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

vnoremap("<", "<gv", { desc = "Increase line indentation" })
vnoremap(">", ">gv", { desc = "Decrease line indentation" })

vnoremap("<leader>p", '"_dP', { desc = "Paste and retain yank buffer" })

vnoremap("<S-l>", "$")
vnoremap("<S-h>", "^")

nnoremap("n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
xnoremap("n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
onoremap("n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
nnoremap("N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
xnoremap("N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
onoremap("N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })