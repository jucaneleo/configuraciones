
function Colorear(color)
	color = color or "everforest"
	vim.opt.termguicolors = true
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0,"Normal", {bg = "none"})
	vim.api.nvim_set_hl(0,"NormalFloat", {bg = "none"})
	vim.api.nvim_set_hl(0,"EndOfBuffer", {bg = "none"})
	vim.opt.fillchars = {
		eob = " "
	}
end

Colorear()
