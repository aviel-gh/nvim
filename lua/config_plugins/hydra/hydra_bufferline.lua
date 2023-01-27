local ok1, hydra = pcall(require, "hydra")

if not ok1 then
    return
end

local hint = [[ 
    _<Right>_: Next Buffer
    _<Left>_ : Prev Buffer

    _<A-Right>_: Move Buffer Foward   
    _<A-Left>_ : Move Buffer Back   

    _1_-_9_: Go To Buffer

    _<ESC>_: Exit
]]

hydra({
    name = "Bufferline",
    hint = hint,
    config = {
        color = 'amaranth', -- has meaning
        invoke_on_body = true, -- invoke hydra using only body key sequences
        timeout = false,
        hint = {
            type = "window",
            border = 'rounded',
            position = 'middle-right',
            offset = 0,
        }
    },
    mode = "n",
    body = "<leader>b",
    heads = {
        { "<Right>", ":BufferLineCycleNext<CR>", { desc = "Next Buffer" }},
        { "<Left>", ":BufferLineCyclePrev<CR>", { desc = "Prev Buffer" }},
        { "<A-Right>", ":BufferLineMoveNext<CR>", { desc = "Move Buffer Foward" }},
        { "<A-Left>", ":BufferLineMovePrev<CR>", { desc = "Move Buffer Back" }},

        { "1", ":BufferLineGoToBuffer 1<CR>", { desc = false }},
        { "2", ":BufferLineGoToBuffer 2<CR>", { desc = false }},
        { "3", ":BufferLineGoToBuffer 3<CR>", { desc = false }},
        { "4", ":BufferLineGoToBuffer 4<CR>", { desc = false }},
        { "5", ":BufferLineGoToBuffer 5<CR>", { desc = false }},
        { "6", ":BufferLineGoToBuffer 6<CR>", { desc = false }},
        { "7", ":BufferLineGoToBuffer 7<CR>", { desc = false }},
        { "8", ":BufferLineGoToBuffer 8<CR>", { desc = false }},
        { "9", ":BufferLineGoToBuffer 9<CR>", { desc = false }},

        { "x", ":bdelete<CR>", {desc = "Close Buffer"}},
        { "p", ":BufferLineTogglePin<CR>", {desc = "Toggle Pin Buffer"}},

        { "<ESC>", nil, { exit = true }},
    },
})
