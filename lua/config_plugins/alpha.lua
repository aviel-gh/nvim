local status_ok, alpha = pcall(require, "alpha")

if not status_ok then
    return
end

local db = require("alpha.themes.dashboard")


db.section.header.val = {
    "                                                       ",
    "                                                       ",
    "                                                       ",
    " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
    " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
    " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
    " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
    " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
    " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
    "                                                       ",
    "                                                       ",
    "                                                       ",
    "                                                       ",
}

db.section.buttons.val  = {
    db.button("r", "  Recent", ":Telescope oldfiles<CR>"),
    db.button("f", "  Find File", ":Telescope fd<CR>"),
    db.button("t", "  Find Text", ":Telescope live_grep<CR>"),
    db.button("u", "  Update Plugins", ":PackerSync<CR>"),
    db.button("q", "  Quit", ":qa<CR>"),
}

db.section.footer.val = {
    "The true test of a man’s character is what he does when no one is watching. - John Wooden",
}

db.config.layout = {
    { type = "padding", val = 2 },
    db.section.header,
    { type = "padding", val = 2 },
    db.section.buttons,
    { type = "padding", val = 5 },
    db.section.footer,
}

alpha.setup(db.config)
