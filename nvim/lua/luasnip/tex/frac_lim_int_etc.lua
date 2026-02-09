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

return {
	s({ trig = 'frac', snippetType = "autosnippet" },
		fmt(
			[[
			\frac{<>}{<>}
				]],
			{ i(1), i(2) },
			{ delimiters = "<>" }
		),
		{
			condition = in_math
		}
	),

	s({ trig = 'int', snippetType = "autosnippet" },
		fmt(
			[[
			\int_{<>}^{<>}
				]],
			{ i(1), i(2) },
			{ delimiters = "<>" }
		),
		{
			condition = in_math
		}

	),

	s({ trig = 'sum', snippetType = "autosnippet" },
		fmt(
			[[
			\sum_{<> = <>}^{<>}
				]],
			{ i(1), i(2), i(3) },
			{ delimiters = "<>" }
		),
		{
			condition = in_math
		}

	),

	s({ trig = 'lim', snippetType = "autosnippet" },
		fmt(
			[[
			\lim_{<> \rightarrow <>}
				]],
			{ i(1), i(2) },
			{ delimiters = "<>" }
		),
		{
			condition = in_math
		}

	),

	s({ trig = 'mb', snippetType = "autosnippet" },
		fmt(
			[[
			\mathbb{<>}
				]],
			{ i(1) },
			{ delimiters = "<>" }
		),
		{
			condition = in_math
		}

	),

	s({ trig = 'mc', snippetType = "autosnippet" },
		fmt(
			[[
			\mathcal{<>}
				]],
			{ i(1) },
			{ delimiters = "<>" }
		),
		{
			condition = in_math
		}

	),
}
