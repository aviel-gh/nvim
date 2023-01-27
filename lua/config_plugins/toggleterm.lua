local ok, toggleterm = pcall(require, "toggleterm")

if not ok then
    return
end

toggleterm.setup {
    direction = "vertical", -- "veritcal", "horizontal", "tab", "float"
    hide_numbers = true,
    autochdir = false,
    shade_terminals = true,
    -- shading_factor = "",
    presist_size = true, -- previous terminal size will be remembered
    persist_mode = true, -- previous terminal mode will be remembered
    shell = vim.o.shell,
    auto_scroll = true,
    close_on_exit = true, -- close terminal window when the process exits
    start_in_insert = true,
}
