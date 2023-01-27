local keymap = vim.keymap.set -- keymap() = vim.keymap.set()

-- Modes
    -- normal - "n"
    -- insert - "i"
    -- visual - "v"

-- Remap space as leader key
    keymap("", "<Space>", "<Nop>", {desc = "Leader Key"})
    vim.g.mapleader = " "
    vim.g.maplocalleader = " "

-- General --
    keymap("n", "<leader>e", ":NvimTreeToggle<CR>", {desc = "Toggles Nvim Tree"})
    keymap("n", "<leader>ss", ":s/\\<<C-r><C-w>\\>/<C-r><C-w>", {desc = "Search and Replace Single"})
    keymap("n", "<leader>sa", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/g<Left><Left>", {desc = "Search and Replace All"})

-- Telescope --
    local builtin = require("telescope.builtin")

    keymap("n", "<leader>ff", builtin.find_files, {desc = "Telescope Find File (cwd)"})
    keymap("n", "<leader>fa", function() builtin.find_files({cwd="~"}) end, {desc = "Telescope Find File (home)"})
    keymap("n", "<leader>fg", builtin.git_files, {desc = "Telescope Find File (git repo)"})
    keymap("n", "<leader>fh", builtin.oldfiles, {desc = "Telescope File History"})

-- Indentation --
    keymap("i", "<Tab>"    , "<C-t>", {desc = "Indent (insert mode)"})
    keymap("i", "<A-Right>", "<C-t>", {desc = "Indent (insert mode)"})
    keymap("i", "<S-Tab>"  , "<C-d>", {desc = "Unindent (insert mode)"})
    keymap("i", "<A-Left>" , "<C-d>", {desc = "Unindent (insert mode)"})

    keymap("v", "<A-Right>", ">gv", {desc = "Indent (visual mode)"})
    keymap("v", "<Tab>"    , ">gv", {desc = "Indent (visual mode)"})
    keymap("v", "<S-Tab>"  , "<gv", {desc = "Unindent (visual mode)"})
    keymap("v", "<A-Left>" , "<gv", {desc = "Unindent (visual mode)"})

-- Moving Lines --
    keymap("n", "<A-Up>"  , ":m .-2<CR>==", {desc = "Move line up (normal mode)"})
    keymap("n", "<A-Down>", ":m .+1<CR>==", {desc = "Move line down (normal mode)"})

    keymap("v", "<A-Up>"  , ":m '<-2<CR>gv=gv", {desc = "Move selected lines up (visual mode)"})
    keymap("v", "<A-Down>", ":m '>+1<CR>gv=gv", {desc = "Move selected line down (visual mode)"})
