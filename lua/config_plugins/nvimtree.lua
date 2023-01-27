local status_ok, nvimtree = pcall(require, "nvim-tree")

if not status_ok then
    return
end

nvimtree.setup {
    auto_reload_on_write = true,
    hijack_cursor = true,
    view = {
        side = "left",
        adaptive_size = true,
        number = false,
        relativenumber = false,
    },
    renderer = {
        add_trailing = false,
        highlight_git = true,
        group_empty = true,
        indent_width = 2,
        indent_markers = {
            enable = true,
            inline_arrows = true,
            icons = {
                corner = "└",
                edge = "│",
                item = "│",
                bottom = "─",
                none = " ",
            }, 
        },
        icons = {
            webdev_colors = true,
            git_placement = "after",
            padding = " ",
            symlink_arrow = " ➛ ",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
            glyphs = {
                default = "",
                symlink = "",
                bookmark = "",
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
                git = {
                    unstaged = "M",
                    staged = "✓",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "U",
                    deleted = "D",
                    ignored = "◌",
                },
            },
        },
        symlink_destination = true,
    },
    git = {
        enable = true,
        ignore = true,
        show_on_dirs = true,
        show_on_open_dirs = false,
    },
}
