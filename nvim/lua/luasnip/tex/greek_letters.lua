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

local in_math = function ()
	return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
	-- Greek letter snippets:
	s({ trig = "aa", snippetType = "autosnippet" },
		{
			t("\\alpha"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "bb", snippetType = "autosnippet" },
		{
			t("\\beta"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "gg", snippetType = "autosnippet" },
		{
			t("\\gamma"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "GG", snippetType = "autosnippet" },
		{
			t("\\Gamma"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "dd", snippetType = "autosnippet" },
		{
			t("\\delta"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "DD", snippetType = "autosnippet" },
		{
			t("\\Delta"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "ee", snippetType = "autosnippet" },
		{
			t("\\varepsilon"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "zz", snippetType = "autosnippet" },
		{
			t("\\zeta"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "hh", snippetType = "autosnippet" },
		{
			t("\\eta"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "tt", snippetType = "autosnippet" },
		{
			t("\\theta"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "TT", snippetType = "autosnippet" },
		{
			t("\\Theta"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "ii", snippetType = "autosnippet" },
		{
			t("\\iota"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "kk", snippetType = "autosnippet" },
		{
			t("\\kappa"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "ll", snippetType = "autosnippet" },
		{
			t("\\lambda"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "LL", snippetType = "autosnippet" },
		{
			t("\\Lambda"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "mm", snippetType = "autosnippet" },
		{
			t("\\mu"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "nn", snippetType = "autosnippet" },
		{
			t("\\nu"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "xi", snippetType = "autosnippet" },
		{
			t("\\xi"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "Xi", snippetType = "autosnippet" },
		{
			t("\\Xi"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "pi", snippetType = "autosnippet" },
		{
			t("\\pi"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "Pi", snippetType = "autosnippet" },
		{
			t("\\Pi"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "rr", snippetType = "autosnippet" },
		{
			t("\\rho"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "RR", snippetType = "autosnippet" },
		{
			t("\\Rho"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "ss", snippetType = "autosnippet" },
		{
			t("\\sigma"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "SS", snippetType = "autosnippet" },
		{
			t("\\Sigma"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "tau", snippetType = "autosnippet" },
		{
			t("\\tau"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "uu", snippetType = "autosnippet" },
		{
			t("\\upsilon"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "UU", snippetType = "autosnippet" },
		{
			t("\\Upsilon"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "pp", snippetType = "autosnippet" },
		{
			t("\\varphi"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "PP", snippetType = "autosnippet" },
		{
			t("\\Phi"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "xx", snippetType = "autosnippet" },
		{
			t("\\chi"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "psi", snippetType = "autosnippet" },
		{
			t("\\psi"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "Psi", snippetType = "autosnippet" },
		{
			t("\\Psi"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "oo", snippetType = "autosnippet" },
		{
			t("\\omega"),
		},
		{
				condition = in_math
		}
	),
	s({ trig = "OO", snippetType = "autosnippet" },
		{
			t("\\Omega"),
		},
		{
				condition = in_math
		}
	),
}
