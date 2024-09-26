require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "H", function ()
  require("nvchad.tabufline").prev()
end)

map("n", "L", function ()
  require("nvchad.tabufline").next()
end)

map({"n", "i", "v"}, "<F1>", "<ESC>")


-- hop
map("n", "f", "<cmd>HopChar2<cr>")

-- custom
map({"n", "i", "v"}, "<C-q>", "<cmd> :call QuickFixToggle()<CR>")

-- lsp
map({"n"}, "<leader>lm", function ()
  vim.lsp.buf.formatting()
end, { desc = "lsp formatting"})

map({"n"}, "<leader>lj", "<cmd> lua vim.diagnostic.goto_next() <CR>")
map({"n"}, "<leader>lk", "<cmd> lua vim.diagnostic.goto_prev() <CR>")

-- trouble
map("n", "<leader>tt", "<cmd>Trouble toggle<cr>")
map("n", "<leader>tq", "<cmd>Trouble qflist toggle<cr>")
map("n", "<leader>tw", "<cmd>Trouble workspace_mode toggle<cr>")

-- dap
map("n", "<leader>dt", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { desc = "toggle breakpoint" })
map("n", "<leader>db", "<cmd>lua require'dap'.step_back()<cr>", { desc = "step back" })
map("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", { desc = "continue" })
map("n", "<leader>dC", "<cmd>lua require'dap'.run_to_cursor()<cr>", { desc = "run to cursor" })
map("n", "<leader>dd", "<cmd>lua require'dap'.disconnect()<cr>", { desc = "disconnect" })
map("n", "<leader>dg", "<cmd>lua require'dap'.session()<cr>", { desc = "get session" })
map("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", { desc = "step into" })
map("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", { desc = "step over" })
map("n", "<leader>du", "<cmd>lua require'dap'.step_out()<cr>", { desc = "step out" })
map("n", "<leader>dp", "<cmd>lua require'dap'.pause.toggle()<cr>", {desc = "pause" })
map("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", { desc = "toggle repl" })
map("n", "<leader>ds", "<cmd>lua require'dap'.continue()<cr>", { desc = "start" })
map("n", "<leader>dq", "<cmd>lua require'dap'.close()<cr>", { desc = "quit" })

-- telescope
map("n", "<leader>ft", "<cmd>lua require'telescope.builtin'.grep_string()<cr>", { desc = "grep string" })

-- disable tab
local nomap = vim.keymap.del

nomap("n", "<tab>")
