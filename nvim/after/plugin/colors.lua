function ColorMyPencils(color)
    color = color or "night-owl"

    vim.cmd.colorscheme(color)
end

ColorMyPencils()
