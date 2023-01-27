local status_ok, lsp = pcall(require, "lsp-zero")

if not status_ok then
    return
end

lsp.set_preferences({ -- recommended preset
    suggest_lsp_servers = true,
    setup_servers_on_start = true,
    set_lsp_keymaps = true,
    configure_diagnostics = true,
    cmp_capabilities = true,
    manage_nvim_cmp = true,
    call_servers = 'local',
    sign_icons = {
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = ''
    }
})

-- local keymap = vim.keymap.set

-- lsp.on_attach(function(client, bufnr)
--    keymap("n", "gd", function() vim.lsp.buf.definition() end, {buffer = bufnr, desc = "Go to Definiton"})


lsp.setup()
