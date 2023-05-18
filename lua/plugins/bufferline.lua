vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        mode = "tabs";
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
        --separator_style = "slant",
        diagnostics = "nvim_lsp",
    }
}
