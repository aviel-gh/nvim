local status_ok, telescope = pcall(require, "telescope")

if not status_ok then
    return
end

telescope.setup {
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case", -- "smart_case", "respect_case", "ignore_case"
        }
    }
}

telescope.load_extension('fzf')

-- have to comment out the load and configuration of extensions when installing on
-- other devices, otherwise there will be an error and the extension won't be able to
-- be installed.
--
-- may have to uninstall and then reinstall extensions for it to work
