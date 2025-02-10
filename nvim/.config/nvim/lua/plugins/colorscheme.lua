return{
    'morhetz/gruvbox',
    lazy=false,
    priority=1000,
    init = function()
        vim.o.termguicolors = true
        vim.cmd.colorscheme 'habamax' -- 'gruvbox'
    end,
}

