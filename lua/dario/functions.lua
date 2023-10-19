-- Toggle indent line

function ToggleIL()
    vim.g.indent_blankline_enabled = not vim.g.indent_blankline_enabled
    if vim.g.indent_blankline_enabled then
        print("Indent Blankline is on")
    else
        print("Indent Blankline is off")
    end
end


-- Toggle colorcolumn

vim.opt.colorcolumn = "0"
ColState = 0

function ToggleColorCol()

    if ColState == 0 then

        vim.opt.colorcolumn = "80"
        ColState = 80
    else

        vim.opt.colorcolumn = "0"
        ColState = 0
    end
end


-- Mappings

vim.keymap.set("n", "<C-i>", ":lua ToggleIL()<CR>", {silent = true})
vim.keymap.set("n", "<C-y>", ":lua ToggleColorCol()<CR>", {silent = true})
