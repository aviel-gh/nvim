local status_ok, bufferline = pcall(require, "bufferline")

if not status_ok then
    return
end


bufferline.setup {
    highlights = require("catppuccin.groups.integrations.bufferline").get(),
    options = {
        mode = "buffers",
        indicator = { style = 'underline' },
        separator_style = "slant",
        numbers = function(opts)
            return string.format('%s', opts.raise(opts.ordinal))
        end,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Tree",
                highlight = "Directory",
                separator = true,
            }
        },
    }
}
