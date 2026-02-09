local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local in_math = function()
	return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

local in_align = function()
	local envs = { "align", "align*", "aligned", "aligned*", "flalign", "flalign*" }

	for _, env in ipairs(envs) do
		if vim.fn["vimtex#env#is_inside"](env) ~= 0 then
			return true
		end
	end

	return false
end

return {
	-- Equation and align environments:
	s({ trig = 'eq' },
		fmt(
			[[
				\begin{equation}
						<>
				\end{equation}
				]],
			{ i(1) },
			{ delimiters = "<>" }
		)
	),

	s({ trig = 'al' },
		fmt(
			[[
				\begin{align*}
						<>
				\end{align*}
				]],
			{ i(1) },
			{ delimiters = "<>" }
		)
	),

	s({ trig = '==', snippetType = "autosnippet" },
		fmt(
			[[
			&= <> \\
				]],
			{ i(1) },
			{ delimiters = "<>" }
		),
		{ condition = in_align }
	),
}
