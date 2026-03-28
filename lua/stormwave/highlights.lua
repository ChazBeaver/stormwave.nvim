local M = {}

function M.apply(c)
  local HI = vim.api.nvim_set_hl
  local NONE = "NONE"

  -- ============================================================
  -- PALETTE ALIASES
  -- Use the new role-based palette directly in highlights.lua.
  -- ============================================================

  -- --- Tonal / surface roles
  local surface_main         = c.surface_main
  local surface_subtle       = c.surface_subtle
  local surface_emphasis     = c.surface_emphasis
  local surface_panel        = c.surface_panel
  local surface_panel_alt    = c.surface_panel_alt
  local surface_accent       = c.surface_accent
  local surface_prompt       = c.surface_prompt
  local surface_hint         = c.surface_hint

  -- --- Text roles
  local text_primary         = c.text_primary
  local text_secondary       = c.text_secondary
  local text_muted           = c.text_muted
  local text_dim             = c.text_dim

  -- --- Neutral ladder
  local neutral_0            = c.neutral_0
  local neutral_1            = c.neutral_1
  local neutral_2            = c.neutral_2
  local neutral_3            = c.neutral_3
  local neutral_9            = c.neutral_9

  -- --- Warm core accents
  local accent_red_deep      = c.accent_red_deep
  local accent_rose          = c.accent_rose
  local accent_rust          = c.accent_rust
  local accent_ember         = c.accent_ember
  local accent_orange        = c.accent_orange
  local accent_orange_soft   = c.accent_orange_soft
  local accent_gold          = c.accent_gold
  local accent_amber         = c.accent_amber
  local accent_yellow        = c.accent_yellow
  local accent_yellow_soft   = c.accent_yellow_soft
  local accent_olive         = c.accent_olive
  local accent_olive_deep    = c.accent_olive_deep
  local accent_yellow_green  = c.accent_yellow_green
  local accent_green         = c.accent_green
  local accent_green_deep    = c.accent_green_deep
  local accent_moss          = c.accent_moss
  local accent_purple        = c.accent_purple
  local accent_violet        = c.accent_violet
  local accent_violet_soft   = c.accent_violet_soft
  local accent_plum          = c.accent_plum
  local accent_magenta       = c.accent_magenta
  local accent_rose_dust     = c.accent_rose_dust
  local accent_aqua          = c.accent_aqua

  -- --- Support accents
  local support_green        = c.support_green
  local support_red          = c.support_red
  local support_success      = c.support_success
  local support_ok           = c.support_ok

  -- --- Semantic UI roles
  local ui_border            = c.ui_border
  local ui_selection         = c.ui_selection
  local ui_selection_subtle  = c.ui_selection_subtle
  local ui_search_bg         = c.ui_search_bg
  local ui_search_fg         = c.ui_search_fg
  local ui_incsearch_bg      = c.ui_incsearch_bg
  local ui_incsearch_fg      = c.ui_incsearch_fg
  local ui_cursor_bg         = c.ui_cursor_bg
  local ui_cursor_fg         = c.ui_cursor_fg

  -- --- Diagnostic / diff roles
  local diag_error           = c.diag_error
  local diag_warn            = c.diag_warn
  local diag_info            = c.diag_info
  local diag_hint            = c.diag_hint

  local diff_add             = c.diff_add
  local diff_delete          = c.diff_delete
  local diff_change          = c.diff_change
  local diff_text            = c.diff_text

  -- --- Rare one-offs
  local special_statement    = c.special_statement
  local special_rainbow_1    = c.special_rainbow_1
  local special_yellow       = c.special_yellow
  local special_green        = c.special_green
  local special_red          = c.special_red

  -- ============================================================
  -- TERMINAL COLORS
  -- These populate Neovim's built-in terminal palette.
  -- ============================================================

  vim.g.terminal_color_0  = surface_main
  vim.g.terminal_color_1  = accent_rust
  vim.g.terminal_color_2  = accent_moss
  vim.g.terminal_color_3  = accent_gold
  vim.g.terminal_color_4  = accent_purple
  vim.g.terminal_color_5  = accent_olive
  vim.g.terminal_color_6  = accent_ember
  vim.g.terminal_color_7  = text_primary
  vim.g.terminal_color_8  = surface_emphasis
  vim.g.terminal_color_9  = accent_rose
  vim.g.terminal_color_10 = support_green
  vim.g.terminal_color_11 = accent_yellow
  vim.g.terminal_color_12 = accent_violet_soft
  vim.g.terminal_color_13 = accent_magenta
  vim.g.terminal_color_14 = accent_aqua
  vim.g.terminal_color_15 = special_rainbow_1

  -- ============================================================
  -- LSP / SEMANTIC TOKEN LINKS
  -- ============================================================

  HI(0, "@lsp.type.operator", { link = "@operator" })
  HI(0, "@lsp.type.parameter", { link = "@parameter" })
  HI(0, "@class", { link = "TSType" })
  HI(0, "@lsp.type.selfKeyword", { link = "@variable.builtin" })
  HI(0, "@enum", { link = "TSType" })
  HI(0, "@enumMember", { link = "Constant" })
  HI(0, "@lsp.type.struct", { link = "Structure" })
  HI(0, "@lsp.type.type", { link = "Type" })
  HI(0, "@lsp.type.typeAlias", { link = "@type.definition" })
  HI(0, "@lsp.type.typeParameter", { link = "Typedef" })
  HI(0, "@lsp.type.unresolvedReference", { link = "Error" })
  HI(0, "@decorator", { link = "Identifier" })
  HI(0, "@lsp.typemod.class.defaultLibrary", { link = "@type.builtin" })
  HI(0, "@lsp.typemod.enum.defaultLibrary", { link = "@type.builtin" })
  HI(0, "@lsp.typemod.enumMember.defaultLibrary", { link = "@constant.builtin" })
  HI(0, "@lsp.typemod.function.builtin", { link = "@function.builtin" })
  HI(0, "@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
  HI(0, "@lsp.typemod.function.readonly", { link = "@method" })
  HI(0, "@lsp.typemod.keyword.async", { link = "@keyword.coroutine" })
  HI(0, "@lsp.typemod.keyword.documentation", { link = "Special" })
  HI(0, "@lsp.typemod.macro.defaultLibrary", { link = "@function.builtin" })
  HI(0, "@lsp.typemod.method.defaultLibrary", { link = "@function.builtin" })
  HI(0, "@lsp.typemod.operator.controlFlow", { link = "@exception" })
  HI(0, "@lsp.typemod.operator.injected", { link = "@operator" })
  HI(0, "@lsp.typemod.string.injected", { link = "@string" })
  HI(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
  HI(0, "@lsp.typemod.variable.global", { link = "@constant" })
  HI(0, "@lsp.typemod.variable.injected", { link = "@variable" })
  HI(0, "@lsp.typemod.variable.static", { link = "@constant" })
  HI(0, "@lsp.type.number", { link = "@number" })
  HI(0, "@lsp.type.variable", { link = "@variable" })
  HI(0, "@lsp.type.string.rust", { link = "@string" })
  HI(0, "@lsp.type.property", { link = "@property" })
  HI(0, "@lsp.type.selfParameter", { link = "@variable.builtin" })
  HI(0, "@lsp.type.builtinType", { link = "@type.builtin" })
  HI(0, "@lsp.type.macro", { link = "Macro" })
  HI(0, "@lsp.type.magicFunction", { link = "@function.builtin" })
  HI(0, "@lsp.type.method", { link = "@function" })
  HI(0, "@lsp.mod.builtin", { link = "Special" })
  HI(0, "@lsp.mod.readonly", { link = "@constant" })
  HI(0, "@lsp.mod.typeHint", { link = "Type" })
  HI(0, "@lsp.type.boolean", { link = "@boolean" })
  HI(0, "@lsp.type.builtinConstant", { link = "@constant.builtin" })
  HI(0, "@lsp.type.class", { link = "Structure" })
  HI(0, "@lsp.type.comment", { link = "@comment" })
  HI(0, "@lsp.type.decorator", { link = "Decorator" })
  HI(0, "@lsp.type.enum", { link = "@type" })
  HI(0, "@lsp.type.enumMember", { link = "@constant" })
  HI(0, "@lsp.type.escapeSequence", { link = "@string.escape" })
  HI(0, "@lsp.type.formatSpecifier", { link = "@punctuation.special" })
  HI(0, "@lsp.type.function", { link = "@function" })
  HI(0, "@lsp.type.interface", { link = "Structure" })
  HI(0, "@lsp.type.keyword", { link = "@keyword" })
  HI(0, "@lsp.type.namespace", { link = "@namespace" })

  -- ============================================================
  -- SPECIALIZED SEMANTIC / DOMAIN TOKENS
  -- ============================================================

  HI(0, "@macro", { link = "Macro" })
  HI(0, "@number.date", { fg = accent_purple })
  HI(0, "@number.date.effective", { fg = support_success })
  HI(0, "@number.interval", { fg = accent_amber })
  HI(0, "@number.quantity", { fg = accent_moss })
  HI(0, "@number.quantity.negative", { fg = accent_magenta })
  HI(0, "@number.status", { fg = accent_rose_dust })
  HI(0, "@punctuation", { link = "Delimiter" })
  HI(0, "@reference", { fg = text_secondary })
  HI(0, "@text.literal.commodity", { fg = support_success })

  -- ============================================================
  -- BUFFERLINE / COMPLETION / SMALL UI HELPERS
  -- ============================================================

  HI(0, "BufferLineDiagnostic", { bold = true, cterm = { bold = true }, fg = accent_magenta })
  HI(0, "BufferLineDiagnosticVisible", { bold = true, cterm = { bold = true }, fg = accent_magenta })

  HI(0, "CmpItemKindColor", { bg = accent_purple, fg = neutral_1 })
  HI(0, "CmpItemKindFile", { bg = accent_violet_soft, fg = neutral_1 })
  HI(0, "CmpItemKindFolder", { bg = support_success, fg = neutral_1 })
  HI(0, "CmpItemKindText", { bg = accent_amber, fg = neutral_1 })

  HI(0, "CodeBlock", { bg = neutral_1 })

  -- ============================================================
  -- CORE UI / GENERIC VIM GROUPS
  -- ============================================================

  HI(0, "ErrorMsg", { bg = surface_main, fg = accent_orange })
  HI(0, "CurSearch", { link = "Search" })
  HI(0, "CursorLineFold", { link = "FoldColumn" })
  HI(0, "CursorLineSign", { link = "SignColumn" })
  HI(0, "Decorator", { fg = accent_rose_dust })
  HI(0, "Delimeter", { fg = neutral_9 })
  HI(0, "EndOfBuffer", { fg = neutral_1 })
  HI(0, "FloatShadow", { bg = neutral_0, blend = 80 })
  HI(0, "FloatShadowThrough", { bg = neutral_0, blend = 100 })

  HI(0, "Repeat", { fg = accent_olive })
  HI(0, "StorageClass", { fg = accent_olive })
  HI(0, "Structure", { fg = accent_rose })
  HI(0, "Tag", { fg = accent_olive })
  HI(0, "Todo", { bg = surface_subtle, fg = accent_olive })

  HI(0, "Typedef", { fg = accent_olive })
  HI(0, "NonText", { fg = text_dim })
  HI(0, "Directory", { fg = accent_yellow })
  HI(0, "Normal", { bg = surface_main, fg = text_primary })
  HI(0, "Special", { fg = accent_purple })
  HI(0, "PmenuSel", { bg = text_primary, fg = surface_subtle })
  HI(0, "LineNr", { bg = surface_main, fg = text_muted })
  HI(0, "NormalNC", { bg = surface_main, fg = text_primary })
  HI(0, "TermCursor", { bg = ui_cursor_bg, fg = ui_cursor_fg })
  HI(0, "TermCursorNC", { bg = ui_cursor_bg, fg = ui_cursor_fg })
  HI(0, "Comment", { cterm = { italic = true }, fg = text_dim, italic = true })
  HI(0, "FloatTitle", { link = "Title" })
  HI(0, "Ignore", { ctermfg = 0 })
  HI(0, "LineNrAbove", { link = "LineNr" })
  HI(0, "LineNrBelow", { link = "LineNr" })
  HI(0, "MsgSeparator", { link = "StatusLine" })
  HI(0, "Bold", { bold = true, cterm = { bold = true } })
  HI(0, "Debug", { fg = accent_orange })
  HI(0, "Exception", { fg = accent_orange })
  HI(0, "FoldColumn", { bg = surface_main, fg = accent_purple })
  HI(0, "Folded", { bg = surface_subtle, fg = text_dim })
  HI(0, "Italic", { cterm = { italic = true } })
  HI(0, "Macro", { fg = accent_orange })
  HI(0, "MatchParen", { bg = text_dim, cterm = { underline = true }, underline = true })
  HI(0, "MoreMsg", { fg = accent_green })
  HI(0, "Question", { fg = accent_yellow })
  HI(0, "SpecialKey", { fg = text_dim })
  HI(0, "Conceal", { bg = surface_main, fg = accent_yellow })
  HI(0, "Cursor", { bg = ui_cursor_bg, fg = ui_cursor_fg })
  HI(0, "SignColumn", { bg = NONE })
  HI(0, "StatusLine", { bg = surface_emphasis, fg = text_primary })
  HI(0, "StatusLineNC", { bg = surface_subtle, fg = text_muted })
  HI(0, "CursorColumn", { bg = surface_subtle })
  HI(0, "ColorColumn", { bg = surface_subtle })
  HI(0, "VisualNOS", { bg = neutral_2, fg = accent_orange })
  HI(0, "Visual", { bg = ui_selection })
  HI(0, "VertSplit", { bg = surface_main, fg = text_primary })
  HI(0, "Underlined", { cterm = { underline = true }, fg = accent_orange, underline = true })
  HI(0, "TooLong", { bg = neutral_2, fg = accent_orange })
  HI(0, "QuickFixLine", { bg = surface_subtle })
  HI(0, "WinBar", { cterm = { bold = true }, fg = text_primary })
  HI(0, "WinBarNC", { fg = text_muted })
  HI(0, "Whitespace", { link = "NonText" })
  HI(0, "WinSeparator", { link = "VertSplit" })

  -- ============================================================
  -- DIAGNOSTICS / LSP FEEDBACK
  -- ============================================================

  HI(0, "DiagnosticFloatingOk", { link = "DiagnosticOk" })
  HI(0, "DiagnosticOk", { ctermfg = 10, fg = support_ok })
  HI(0, "DiagnosticSignOk", { link = "DiagnosticOk" })
  HI(0, "DiagnosticUnderlineOk", { cterm = { underline = true }, sp = support_ok, underline = true })
  HI(0, "DiagnosticVirtualTextOk", { link = "DiagnosticOk" })

  HI(0, "DiagnosticError", { fg = diag_error })
  HI(0, "DiagnosticWarn", { fg = diag_warn })
  HI(0, "DiagnosticInfo", { fg = diag_info })
  HI(0, "DiagnosticHint", { fg = diag_hint })

  HI(0, "DiagnosticUnderlineWarning", { sp = accent_rose, undercurl = true })
  HI(0, "DiagnosticUnderlineInformation", { sp = accent_purple, undercurl = true })

  HI(0, "LspDiagnosticsDefaultError", { link = "DiagnosticError" })
  HI(0, "LspDiagnosticsDefaultWarning", { link = "DiagnosticWarn" })
  HI(0, "LspDiagnosticsDefaultInformation", { link = "DiagnosticInfo" })
  HI(0, "LspDiagnosticsDefaultHint", { link = "DiagnosticHint" })
  HI(0, "LspDiagnosticsUnderlineError", { link = "DiagnosticUnderlineError" })
  HI(0, "LspDiagnosticsUnderlineWarning", { link = "DiagnosticUnderlineWarning" })
  HI(0, "LspDiagnosticsUnderlineInformation", { link = "DiagnosticUnderlineInformation" })
  HI(0, "LspDiagnosticsUnderlineHint", { link = "DiagnosticUnderlineHint" })

  HI(0, "LspReferenceWrite", { bg = neutral_3, sp = text_muted, underline = true })
  HI(0, "LspInlayHint", { fg = text_dim, italic = true })
  HI(0, "LspSignatureActiveParameter", { fg = accent_purple })
  HI(0, "LspInfoBorder", { default = true, link = "Label" })
  HI(0, "LspInfoFiletype", { default = true, link = "Type" })
  HI(0, "LspInfoList", { default = true, link = "Function" })
  HI(0, "LspInfoTip", { default = true, link = "Comment" })
  HI(0, "LspInfoTitle", { default = true, link = "Title" })
  HI(0, "LspReferenceread", { bg = neutral_3, sp = text_muted, underline = true })
  HI(0, "DiagnosticVirtualTextWarn", { link = "DiagnosticWarn" })
  HI(0, "DiagnosticVirtualTextInfo", { link = "DiagnosticInfo" })
  HI(0, "DiagnosticUnderlineError", { cterm = { undercurl = true }, fg = accent_magenta, sp = accent_orange, undercurl = true })
  HI(0, "DiagnosticUnderlineWarn", { cterm = { undercurl = true }, fg = accent_violet_soft, sp = accent_rose, undercurl = true })
  HI(0, "DiagnosticUnderlineInfo", { cterm = { undercurl = true }, fg = text_secondary, undercurl = true })
  HI(0, "DiagnosticFloatingHint", { link = "DiagnosticHint" })
  HI(0, "DiagnosticFloatingError", { link = "DiagnosticError" })
  HI(0, "DiagnosticUnnecessary", { link = "Comment" })
  HI(0, "DiagnosticDeprecated", { cterm = { strikethrough = true }, sp = special_red, strikethrough = true })
  HI(0, "DiagnosticSignInfo", { link = "DiagnosticInfo" })
  HI(0, "DiagnosticFloatingInfo", { link = "DiagnosticInfo" })
  HI(0, "DiagnosticFloatingWarn", { link = "DiagnosticWarn" })
  HI(0, "DiagnosticSignHint", { link = "DiagnosticHint" })
  HI(0, "DiagnosticSignWarn", { link = "DiagnosticWarn" })
  HI(0, "DiagnosticVirtualTextError", { link = "DiagnosticError" })
  HI(0, "DiagnosticSignError", { link = "DiagnosticError" })
  HI(0, "DiagnosticVirtualTextHint", { link = "DiagnosticHint" })
  HI(0, "DiagnosticUnderlineHint", { cterm = { undercurl = true }, fg = text_secondary, sp = accent_purple, undercurl = true })
  HI(0, "LspReferenceText", { bg = neutral_3, sp = text_muted, underline = true })

  -- ============================================================
  -- FLOATS / POPUPS / MENUS
  -- ============================================================

  HI(0, "NormalFloat", { bg = surface_main, fg = text_primary })
  HI(0, "FloatBorder", { bg = surface_main, fg = surface_emphasis })
  HI(0, "FloatTitle", { bg = surface_main, fg = accent_yellow, bold = true })
  HI(0, "Pmenu", { bg = surface_main, fg = text_primary })
  HI(0, "PmenuSel", { bg = surface_emphasis, fg = text_primary, bold = true })
  HI(0, "PmenuSbar", { bg = surface_main })
  HI(0, "PmenuThumb", { bg = surface_emphasis })
  HI(0, "PmenuKind", { bg = surface_main, fg = accent_yellow })
  HI(0, "PmenuExtra", { bg = surface_main, fg = text_muted })
  HI(0, "PmenuKindSel", { bg = surface_emphasis, fg = accent_yellow, bold = true })
  HI(0, "PmenuExtraSel", { bg = surface_emphasis, fg = text_primary, bold = true })
  HI(0, "WildMenu", { bg = surface_emphasis, fg = text_primary, bold = true })
  HI(0, "WildSel", { bg = surface_emphasis, fg = text_primary, bold = true })

  -- ============================================================
  -- INDENT GUIDES / RAINBOW HELPERS
  -- ============================================================

  HI(0, "IblIndent", { fg = surface_emphasis, nocombine = true })
  HI(0, "IblWhitespace", { fg = surface_emphasis, nocombine = true })
  HI(0, "IblScope", { fg = text_dim, nocombine = true })

  HI(0, "IndentBlanklineChar", { fg = surface_emphasis, nocombine = true })
  HI(0, "IndentBlanklineContextChar", { fg = text_muted, nocombine = true })

  HI(0, "RainbowRed", { fg = accent_orange })
  HI(0, "RainbowYellow", { fg = accent_yellow })
  HI(0, "RainbowBlue", { fg = accent_purple })
  HI(0, "RainbowOrange", { fg = accent_olive })
  HI(0, "RainbowGreen", { fg = accent_green })
  HI(0, "RainbowViolet", { fg = accent_violet })
  HI(0, "RainbowCyan", { fg = accent_magenta })

  -- ============================================================
  -- GIT / COMMIT / SIGN COLUMN
  -- ============================================================

  HI(0, "DiffChanged", { fg = accent_amber })
  HI(0, "DiffText", { bg = surface_main, fg = diff_text, bold = true })
  HI(0, "DiffAdded", { bg = surface_main, fg = diff_add })
  HI(0, "DiffFile", { bg = surface_main, fg = accent_orange })
  HI(0, "DiffNewFile", { bg = surface_main, fg = diff_add })
  HI(0, "DiffLine", { bg = surface_main, fg = diff_change })
  HI(0, "DiffRemoved", { bg = surface_main, fg = diff_delete })

  HI(0, "gitcommitOverflow", { fg = accent_orange })
  HI(0, "gitcommitSummary", { fg = accent_green })
  HI(0, "gitcommitComment", { fg = text_dim })
  HI(0, "gitcommitUntracked", { fg = text_dim })
  HI(0, "gitcommitDiscarded", { fg = text_dim })
  HI(0, "gitcommitSelected", { fg = text_dim })
  HI(0, "gitcommitHeader", { fg = accent_rose })
  HI(0, "gitcommitSelectedType", { fg = accent_yellow })
  HI(0, "gitcommitUnmergedType", { fg = accent_yellow })
  HI(0, "gitcommitDiscardedType", { fg = accent_yellow })
  HI(0, "gitcommitBranch", { bold = true, fg = accent_yellow })
  HI(0, "gitcommitUntrackedFile", { fg = accent_olive })
  HI(0, "gitcommitUnmergedFile", { bold = true, fg = accent_orange })
  HI(0, "gitcommitDiscardedFile", { bold = true, fg = accent_orange })
  HI(0, "gitcommitSelectedFile", { bold = true, fg = accent_green })

  HI(0, "GitGutterAdd", { bg = surface_main, fg = accent_green })
  HI(0, "GitGutterChange", { bg = surface_main, fg = accent_yellow })
  HI(0, "GitGutterDelete", { bg = surface_main, fg = accent_orange })
  HI(0, "GitGutterChangeDelete", { bg = surface_main, fg = accent_rose })

  HI(0, "GitSignsAdd", { fg = diff_add, bg = NONE })
  HI(0, "GitSignsChange", { fg = diff_change, bg = NONE })
  HI(0, "GitSignsDelete", { fg = accent_red_deep, bg = NONE })
  HI(0, "GitSignsTopdelete", { fg = accent_red_deep, bg = NONE })
  HI(0, "GitSignsChangedelete", { fg = diff_change, bg = NONE })

  HI(0, "MiniDiffSignAdd", { fg = diff_add, bg = NONE })
  HI(0, "MiniDiffSignChange", { fg = diff_change, bg = NONE })
  HI(0, "MiniDiffSignDelete", { fg = accent_red_deep, bg = NONE })

  -- ============================================================
  -- SPELLCHECK
  -- ============================================================

  HI(0, "SpellBad", { cterm = { undercurl = true }, ctermbg = 9, sp = accent_orange, undercurl = true })
  HI(0, "SpellLocal", { cterm = { undercurl = true }, ctermbg = 14, sp = accent_purple, undercurl = true })
  HI(0, "SpellCap", { cterm = { undercurl = true }, ctermbg = 12, sp = accent_yellow, undercurl = true })
  HI(0, "SpellRare", { cterm = { undercurl = true }, ctermbg = 13, sp = accent_rose, undercurl = true })

  -- ============================================================
  -- TREESITTER LEGACY TS* GROUPS
  -- ============================================================

  HI(0, "TSAnnotation", { fg = accent_purple })
  HI(0, "TSAttribute", { fg = accent_olive })
  HI(0, "TSBoolean", { fg = accent_yellow })
  HI(0, "TSCharacter", { fg = accent_orange })
  HI(0, "TSComment", { fg = text_dim, italic = true })
  HI(0, "TSConstructor", { fg = accent_yellow })
  HI(0, "TSConstant", { fg = accent_yellow })
  HI(0, "TSConstBuiltin", { fg = accent_yellow, italic = true })
  HI(0, "TSConstMacro", { fg = accent_orange })
  HI(0, "TSError", { fg = accent_orange })
  HI(0, "TSField", { fg = text_primary })
  HI(0, "TSFloat", { fg = accent_yellow })
  HI(0, "TSFunction", { fg = accent_yellow })
  HI(0, "TSInclude", { fg = accent_yellow })
  HI(0, "TSKeywordFunction", { fg = accent_rose })
  HI(0, "TSKeywordOperator", { fg = accent_rose })
  HI(0, "TSLabel", { fg = accent_olive })
  HI(0, "TSMethod", { fg = accent_yellow })
  HI(0, "TSNamespace", { fg = accent_orange })
  HI(0, "TSNone", { fg = text_primary })
  HI(0, "TSNumber", { fg = accent_yellow })
  HI(0, "TSOperator", { fg = text_primary })
  HI(0, "TSParameter", { fg = text_primary })
  HI(0, "TSParameterReference", { fg = text_primary })
  HI(0, "TSProperty", { fg = text_primary })
  HI(0, "TSPunctDelimiter", { fg = accent_purple })
  HI(0, "TSPunctBracket", { fg = text_primary })
  HI(0, "TSPunctSpecial", { fg = text_primary })
  HI(0, "TSRepeat", { fg = accent_rose })
  HI(0, "TSStringRegex", { fg = accent_purple })
  HI(0, "TSSymbol", { fg = accent_green })
  HI(0, "TSTagDelimiter", { fg = accent_purple })
  HI(0, "TSStrong", { bold = true })
  HI(0, "TSEmphasis", { fg = accent_yellow, italic = true })
  HI(0, "TSUnderline", { fg = surface_main, underline = true })
  HI(0, "TSStrike", { fg = surface_main, strikethrough = true })
  HI(0, "TSTitle", { fg = accent_yellow })
  HI(0, "TSLiteral", { fg = accent_yellow })
  HI(0, "TSType", { fg = accent_olive })
  HI(0, "TSVariable", { fg = accent_orange })
  HI(0, "TSDefinition", { sp = text_muted, underline = true })
  HI(0, "TSDefinitionUsage", { sp = text_muted, underline = true })
  HI(0, "TSCurrentScope", { bold = true })
  HI(0, "TSVariableBuiltin", { fg = accent_orange, italic = true })
  HI(0, "TSURI", { fg = accent_yellow, underline = true })
  HI(0, "TSTypeBuiltin", { fg = accent_olive, italic = true })
  HI(0, "TSText", { fg = text_primary })
  HI(0, "TSTag", { fg = accent_orange })
  HI(0, "TSStringEscape", { fg = accent_purple })
  HI(0, "TSString", { fg = accent_green })
  HI(0, "TSKeyword", { fg = accent_rose })
  HI(0, "TSFuncMacro", { fg = accent_orange })
  HI(0, "TSFuncBuiltin", { fg = accent_yellow, italic = true })
  HI(0, "TSException", { fg = accent_orange })
  HI(0, "TSConditional", { fg = accent_rose })

  -- ============================================================
  -- MODERN TREESITTER @CAPTURE GROUPS
  -- ============================================================

  HI(0, "@comment", { link = "TSComment" })
  HI(0, "@error", { fg = accent_moss, link = "TSError" })
  HI(0, "@none", { link = "TSNone" })
  HI(0, "@preproc", { link = "PreProc" })
  HI(0, "@define", { link = "Define" })
  HI(0, "@operator", { link = "TSOperator" })
  HI(0, "@punctuation.delimiter", { fg = accent_purple, link = "TSPunctDelimiter" })
  HI(0, "@punctuation.bracket", { fg = accent_purple, link = "TSPunctBracket" })
  HI(0, "@punctuation.special", { fg = accent_purple, link = "TSPunctSpecial" })
  HI(0, "@string", { link = "TSString" })
  HI(0, "@string.regex", { fg = accent_green, link = "TSStringRegex" })
  HI(0, "@string.escape", { fg = accent_yellow_soft, link = "TSStringEscape" })
  HI(0, "@string.special", { link = "SpecialChar" })
  HI(0, "@character", { link = "TSCharacter" })
  HI(0, "@character.special", { link = "SpecialChar" })
  HI(0, "@boolean", { link = "TSBoolean" })
  HI(0, "@number", { link = "TSNumber" })
  HI(0, "@float", { link = "TSFloat" })
  HI(0, "@function", { bold = true, cterm = { bold = true }, fg = accent_rose_dust, link = "TSFunction" })
  HI(0, "@function.call", { link = "TSFunction" })
  HI(0, "@function.builtin", { fg = accent_rose_dust, link = "TSFuncBuiltin" })
  HI(0, "@function.macro", { fg = accent_green, link = "TSFuncMacro" })
  HI(0, "@method", { fg = accent_green, link = "TSMethod" })
  HI(0, "@method.call", { link = "TSMethod" })
  HI(0, "@constructor", { fg = accent_amber, link = "TSConstructor" })
  HI(0, "@parameter", { fg = text_secondary, link = "TSParameter" })
  HI(0, "@keyword", { fg = accent_amber, link = "TSKeyword" })
  HI(0, "@keyword.function", { fg = accent_purple, link = "TSKeywordFunction" })
  HI(0, "@keyword.operator", { fg = accent_purple, link = "TSKeywordOperator" })
  HI(0, "@keyword.return", { link = "TSKeyword" })
  HI(0, "@conditional", { fg = accent_amber, link = "TSConditional" })
  HI(0, "@repeat", { fg = accent_amber, link = "TSRepeat" })
  HI(0, "@debug", { link = "Debug" })
  HI(0, "@label", { fg = accent_yellow_soft, link = "TSLabel" })
  HI(0, "@include", { fg = accent_amber, link = "TSInclude" })
  HI(0, "@exception", { fg = accent_yellow_soft, link = "TSException" })
  HI(0, "@type", { link = "TSType" })
  HI(0, "@type.builtin", { link = "TSTypeBuiltin" })
  HI(0, "@type.qualifier", { link = "TSKeyword" })
  HI(0, "@type.definition", { link = "TSType" })
  HI(0, "@storageclass", { link = "StorageClass" })
  HI(0, "@attribute", { fg = accent_yellow_soft, link = "TSAttribute" })
  HI(0, "@field", { fg = text_secondary, link = "TSField" })
  HI(0, "@property", { fg = accent_magenta, link = "TSProperty" })
  HI(0, "@variable", { fg = text_secondary, link = "TSVariable" })
  HI(0, "@constant", { fg = accent_violet_soft, link = "TSConstant" })
  HI(0, "@constant.builtin", { fg = accent_green, link = "TSConstant" })
  HI(0, "@constant.macro", { fg = accent_green, link = "TSConstant" })
  HI(0, "@namespace", { fg = accent_green, link = "TSNamespace" })
  HI(0, "@symbol", { bold = true, cterm = { bold = true }, fg = accent_yellow_soft, link = "TSSymbol" })
  HI(0, "@text", { fg = text_secondary, link = "TSText" })
  HI(0, "@text.strong", { link = "TSStrong" })
  HI(0, "@text.emphasis", { bold = true, cterm = { bold = true }, fg = accent_magenta, link = "TSEmphasis" })
  HI(0, "@text.underline", { cterm = { underline = true }, fg = accent_magenta, link = "TSUnderline", underline = true })
  HI(0, "@text.strike", { cterm = { strikethrough = true }, fg = accent_magenta, link = "TSStrike", strikethrough = true })
  HI(0, "@text.title", { fg = accent_magenta, link = "TSTitle" })
  HI(0, "@text.literal", { fg = text_secondary, link = "TSLiteral" })
  HI(0, "@text.uri", { cterm = { underline = true }, fg = accent_violet_soft, link = "TSURI", underline = true })
  HI(0, "@text.math", { link = "Number" })
  HI(0, "@text.environment", { link = "Macro" })
  HI(0, "@text.environment.name", { link = "Type" })
  HI(0, "@text.reference", { link = "TSParameterReference" })
  HI(0, "@text.todo", { link = "Todo" })
  HI(0, "@text.note", { link = "Tag" })
  HI(0, "@text.warning", { link = "DiagnosticWarn" })
  HI(0, "@text.danger", { link = "DiagnosticError" })
  HI(0, "@tag", { fg = accent_amber, link = "TSTag" })
  HI(0, "@tag.attribute", { fg = accent_yellow_soft, link = "TSAttribute" })
  HI(0, "@tag.delimiter", { fg = accent_yellow_soft, link = "TSTagDelimiter" })
  HI(0, "@event", { link = "Identifier" })
  HI(0, "@typeParameter", { link = "Type" })
  HI(0, "@modifier", { link = "Identifier" })
  HI(0, "@struct", { link = "TSType" })
  HI(0, "@regexp", { link = "TSStringRegex" })
  HI(0, "@interface", { link = "Structure" })
  HI(0, "@variable.builtin", { fg = text_secondary, link = "TSVariableBuiltin" })

  -- ============================================================
  -- RAINBOW / BRACKET HELPERS
  -- ============================================================

  HI(0, "rainbowcol1", { fg = special_rainbow_1 })
  HI(0, "rainbowcol2", { fg = accent_yellow })
  HI(0, "rainbowcol3", { fg = accent_olive })
  HI(0, "rainbowcol4", { fg = accent_violet })
  HI(0, "rainbowcol5", { fg = accent_purple })
  HI(0, "rainbowcol6", { fg = accent_yellow })
  HI(0, "rainbowcol7", { fg = accent_rose })

  -- ============================================================
  -- USER / MISC CUSTOM GROUPS
  -- ============================================================

  HI(0, "NvimInternalError", { bg = accent_orange, fg = surface_main })
  HI(0, "User1", { bg = surface_emphasis, fg = accent_orange })
  HI(0, "User2", { bg = surface_emphasis, fg = accent_rose })
  HI(0, "User3", { bg = surface_emphasis, fg = text_primary })
  HI(0, "User4", { bg = surface_emphasis, fg = accent_purple })
  HI(0, "User5", { bg = surface_emphasis, fg = text_primary })
  HI(0, "User6", { bg = surface_subtle, fg = text_primary })
  HI(0, "User7", { bg = surface_emphasis, fg = text_primary })
  HI(0, "User8", { bg = surface_emphasis, fg = surface_main })
  HI(0, "User9", { bg = surface_emphasis, fg = surface_main })
  HI(0, "TreesitterContext", { bg = surface_subtle, italic = true })

  -- ============================================================
  -- NOTIFY / MESSAGES / HEALTH
  -- ============================================================

  HI(0, "NotifyERRORBorder", { fg = accent_orange })
  HI(0, "NotifyWARNBorder", { fg = accent_rose })
  HI(0, "NotifyINFOBorder", { fg = text_primary })
  HI(0, "NotifyDEBUGBorder", { fg = accent_purple })
  HI(0, "NotifyTRACEBorder", { fg = accent_purple })
  HI(0, "NotifyERRORIcon", { fg = accent_orange })
  HI(0, "NotifyWARNIcon", { fg = accent_rose })
  HI(0, "NotifyINFOIcon", { fg = text_primary })
  HI(0, "NotifyDEBUGIcon", { fg = accent_purple })
  HI(0, "NotifyTRACEIcon", { fg = accent_purple })
  HI(0, "NotifyERRORTitle", { fg = accent_orange })
  HI(0, "NotifyWARNTitle", { fg = accent_rose })
  HI(0, "NotifyINFOTitle", { fg = text_primary })
  HI(0, "NotifyDEBUGTitle", { fg = accent_purple })
  HI(0, "NotifyTRACETitle", { fg = accent_purple })
  HI(0, "NotifyERRORBody", { link = "Normal" })
  HI(0, "NotifyWARNBody", { link = "Normal" })
  HI(0, "NotifyINFOBody", { link = "Normal" })
  HI(0, "NotifyDEBUGBody", { link = "Normal" })
  HI(0, "NotifyTRACEBody", { link = "Normal" })

  HI(0, "HealthError", { fg = accent_magenta })
  HI(0, "HealthSuccess", { fg = support_success })
  HI(0, "HealthWarning", { fg = accent_violet_soft })

  -- ============================================================
  -- COMPLETION MENU (CMP)
  -- ============================================================

  HI(0, "CmpDocumentationBorder", { bg = surface_main, fg = text_primary })
  HI(0, "CmpDocumentation", { bg = surface_main, fg = text_primary })
  HI(0, "CmpItemKindKeyword", { bg = accent_amber, fg = accent_rose })
  HI(0, "CmpItemKindVariable", { bg = accent_violet_soft, fg = accent_orange })
  HI(0, "CmpItemAbbrMatchFuzzy", { bold = true, cterm = { bold = true }, fg = accent_yellow })
  HI(0, "CmpItemKindSnippet", { bg = support_success, fg = text_muted })
  HI(0, "CmpItemKindOperator", { bg = accent_moss, fg = text_primary })
  HI(0, "CmpItemKindEnumMember", { bg = accent_yellow_soft, fg = accent_olive })
  HI(0, "CmpItemKindTypeParameter", { bg = accent_purple, fg = accent_olive })
  HI(0, "CmpItemKindUnit", { bg = support_success, fg = accent_olive })
  HI(0, "CmpItemKindEvent", { bg = accent_rose_dust, fg = accent_olive })
  HI(0, "CmpItemKindStruct", { bg = accent_moss, fg = accent_olive })
  HI(0, "CmpItemKindInterface", { bg = accent_purple, fg = accent_olive })
  HI(0, "CmpItemKindClass", { bg = accent_moss, fg = accent_olive })
  HI(0, "CmpItemKindConstructor", { bg = accent_magenta, fg = accent_yellow })
  HI(0, "CmpItemKindMethod", { bg = accent_yellow_soft, fg = accent_yellow })
  HI(0, "CmpItemAbbrDeprecated", { fg = text_dim, strikethrough = true })
  HI(0, "CmpItemAbbr", { bg = surface_subtle, fg = text_primary })
  HI(0, "CmpItemKind", { default = true, link = "CmpItemKindDefault" })
  HI(0, "CmpItemMenu", { cterm = { italic = true }, fg = text_muted, italic = true })
  HI(0, "CmpItemKindValue", { bg = accent_yellow_soft, fg = accent_yellow })
  HI(0, "CmpItemKindReference", { bg = accent_magenta, fg = accent_orange })
  HI(0, "CmpItemKindProperty", { bg = accent_rose_dust, fg = accent_orange })
  HI(0, "CmpItemAbbrMatch", { bold = true, cterm = { bold = true }, fg = accent_yellow })
  HI(0, "CmpItemKindModule", { bg = accent_moss, fg = text_primary })
  HI(0, "CmpItemKindFunction", { bg = accent_moss, fg = accent_yellow })
  HI(0, "CmpItemKindField", { bg = accent_rose_dust, fg = accent_orange })
  HI(0, "CmpItemKindEnum", { bg = accent_amber, fg = accent_olive })
  HI(0, "CmpItemKindConstant", { bg = accent_magenta, fg = accent_yellow })

  -- ============================================================
  -- NETRW
  -- ============================================================

  HI(0, "netrwHidePat", { link = "Statement" })
  HI(0, "netrwYacc", { link = "netrwPlain" })
  HI(0, "netrwVersion", { link = "Identifier" })
  HI(0, "netrwTreeBar", { link = "Special" })
  HI(0, "netrwTmp", { link = "netrwGray" })
  HI(0, "netrwTimeSep", { link = "netrwDateSep" })
  HI(0, "netrwTilde", { link = "netrwGray" })
  HI(0, "netrwTags", { link = "netrwGray" })
  HI(0, "netrwSymLink", { link = "Question" })
  HI(0, "netrwSpecFile", { link = "netrwGray" })
  HI(0, "netrwQHTopic", { link = "Number" })
  HI(0, "netrwPix", { link = "Special" })
  HI(0, "netrwObj", { link = "netrwGray" })
  HI(0, "netrwMarkFile", { link = "TabLineSel" })
  HI(0, "netrwMakefile", { link = "DiffChange" })
  HI(0, "netrwList", { link = "Statement" })
  HI(0, "netrwLink", { link = "Special" })
  HI(0, "netrwLib", { link = "DiffChange" })
  HI(0, "netrwLex", { link = "netrwPlain" })
  HI(0, "netrwHideSep", { link = "netrwComment" })
  HI(0, "netrwHide", { link = "netrwComment" })
  HI(0, "netrwHelpCmd", { link = "Function" })
  HI(0, "netrwHdr", { link = "netrwPlain" })
  HI(0, "netrwGray", { link = "Folded" })
  HI(0, "netrwExe", { link = "PreProc" })
  HI(0, "netrwDir", { link = "Directory" })
  HI(0, "netrwDateSep", { link = "Delimiter" })
  HI(0, "netrwData", { link = "Folded" })
  HI(0, "netrwCoreDump", { link = "WarningMsg" })
  HI(0, "netrwCompress", { link = "netrwGray" })
  HI(0, "netrwComment", { link = "Comment" })
  HI(0, "netrwComma", { link = "netrwComment" })
  HI(0, "netrwCmdSep", { link = "Delimiter" })
  HI(0, "netrwClassify", { link = "Function" })
  HI(0, "netrwBak", { link = "netrwGray" })

  -- ============================================================
  -- MARKDOWN / WIKI / TEXT FORMATS
  -- ============================================================

  HI(0, "mkdRule", { link = "markdownRule" })
  HI(0, "mkdListItemCheckbox", { link = "markdownListMarker" })
  HI(0, "mkdListItem", { link = "markdownListMarker" })

  HI(0, "markdownUrl", { link = "String" })
  HI(0, "markdownRule", { link = "Comment" })
  HI(0, "markdownOrderedListMarker", { fg = accent_rust })
  HI(0, "markdownListMarker", { fg = accent_rust })
  HI(0, "markdownItalic", { link = "Italic" })

  -- Legacy markdown syntax groups
  HI(0, "markdownHeadingRule", { link = "markdownH1" })
  HI(0, "markdownHeadingDelimiter", { fg = accent_rose_dust })

  HI(0, "markdownH1", { fg = accent_ember, bold = true })
  HI(0, "markdownH2", { fg = accent_plum, bold = true })
  HI(0, "markdownH3", { fg = accent_purple, bold = true })
  HI(0, "markdownH4", { fg = accent_yellow_green, bold = true })
  HI(0, "markdownH5", { fg = accent_gold, bold = true })
  HI(0, "markdownH6", { fg = accent_rose_dust, bold = true })

  HI(0, "markdownCodeDelimiter", { link = "markdownCode" })
  HI(0, "markdownCodeBlock", { link = "markdownCode" })
  HI(0, "markdownCode", { link = "String" })

  -- Vimwiki groups
  HI(0, "VimwikiCode", { link = "markdownCode" })
  HI(0, "VimwikiHeader1", { fg = accent_ember, bold = true })
  HI(0, "VimwikiHeader2", { fg = accent_plum, bold = true })
  HI(0, "VimwikiHeader3", { fg = accent_purple, bold = true })
  HI(0, "VimwikiHeader4", { fg = accent_yellow_green, bold = true })
  HI(0, "VimwikiHeader5", { fg = accent_gold, bold = true })
  HI(0, "VimwikiHeader6", { fg = accent_rose_dust, bold = true })
  HI(0, "VimwikiHeaderChar", { fg = accent_ember })
  HI(0, "VimwikiLink", { link = "markdownUrl" })
  HI(0, "VimwikiList", { link = "markdownListMarker" })

  -- Treesitter markdown captures
  HI(0, "@markup.heading", { fg = accent_ember, bold = true })
  HI(0, "@markup.heading.1.markdown", { fg = accent_ember, bold = true })
  HI(0, "@markup.heading.2.markdown", { fg = accent_plum, bold = true })
  HI(0, "@markup.heading.3.markdown", { fg = accent_purple, bold = true })
  HI(0, "@markup.heading.4.markdown", { fg = accent_yellow_green, bold = true })
  HI(0, "@markup.heading.5.markdown", { fg = accent_gold, bold = true })
  HI(0, "@markup.heading.6.markdown", { fg = accent_rose_dust, bold = true })
  HI(0, "@markup.heading.marker", { fg = accent_ember })
  HI(0, "@markup.heading.marker.markdown", { fg = accent_ember })

  HI(0, "asciidocAttributeEntry", { fg = accent_yellow_soft })
  HI(0, "asciidocAttributeList", { link = "asciidocAttributeEntry" })
  HI(0, "asciidocAttributeRef", { link = "asciidocAttributeEntry" })
  HI(0, "asciidocHLabel", { link = "markdownH1" })
  HI(0, "asciidocOneLineTitle", { link = "markdownH1" })
  HI(0, "asciidocQuotedMonospaced", { link = "markdownBlockquote" })
  HI(0, "asciidocURL", { link = "markdownUrl" })
  HI(0, "htmlH1", { link = "markdownH1" })

  HI(0, "markdownBoldItalic", { bold = true, cterm = { bold = true, italic = true }, italic = true })
  HI(0, "markdownBold", { link = "Bold" })
  HI(0, "markdownBlockquote", { fg = accent_purple })

  -- ============================================================
  -- HELP FILES / DOC VIEWERS
  -- ============================================================

  HI(0, "helpHeader", { fg = accent_yellow_soft })
  HI(0, "helpHeadline", { fg = accent_magenta })
  HI(0, "helpHyperTextJump", { fg = accent_purple })
  HI(0, "helpSpecial", { fg = accent_amber })
  HI(0, "lCursor", vim.empty_dict())

  -- ============================================================
  -- LUA FILETYPE GROUPS
  -- ============================================================

  HI(0, "luaTodo", { link = "Todo" })
  HI(0, "luaTable", { link = "Structure" })
  HI(0, "luaSymbolOperator", { link = "luaOperator" })
  HI(0, "luaStringDelimiter", { link = "luaString" })
  HI(0, "luaString2", { link = "String" })
  HI(0, "luaString", { link = "String" })
  HI(0, "luaStatement", { link = "Statement" })
  HI(0, "luaSpecial", { link = "SpecialChar" })
  HI(0, "luaRepeat", { link = "Repeat" })
  HI(0, "luaParenError", { link = "Error" })
  HI(0, "luaOperator", { link = "Operator" })
  HI(0, "luaNumber", { link = "Number" })
  HI(0, "luaMetaMethod", { link = "Function" })
  HI(0, "luaLabel", { link = "Label" })
  HI(0, "luaFunction", { link = "Function" })
  HI(0, "luaFunc", { link = "Identifier" })
  HI(0, "luaFor", { link = "Repeat" })
  HI(0, "luaError", { link = "Error" })
  HI(0, "luaConstant", { link = "Constant" })
  HI(0, "luaCondElse", { link = "Conditional" })
  HI(0, "luaCond", { link = "Conditional" })
  HI(0, "luaCommentDelimiter", { link = "luaComment" })
  HI(0, "luaComment", { link = "Comment" })

  -- ============================================================
  -- SEARCH / MENUS / STATUSLINES / TABS
  -- ============================================================

  HI(0, "Search", { bg = ui_search_bg, fg = ui_search_fg })
  HI(0, "IncSearch", { bg = ui_incsearch_bg, fg = ui_incsearch_fg })

  HI(0, "StatusCommand", { bg = support_success, fg = surface_panel_alt })
  HI(0, "StatusInsert", { bg = accent_rose_dust, fg = surface_panel_alt })
  HI(0, "StatusLineDiagnosticError", { bg = surface_panel_alt, bold = true, cterm = { bold = true }, fg = accent_magenta })
  HI(0, "StatusLineDiagnosticWarn", { bg = surface_panel_alt, bold = true, cterm = { bold = true }, fg = accent_violet_soft })
  HI(0, "StatusNormal", { bg = accent_yellow_soft, fg = surface_panel_alt })
  HI(0, "StatusVisual", { bg = accent_violet_soft, fg = surface_panel_alt })
  HI(0, "StatusTerminal", { bg = accent_moss, fg = surface_panel_alt })
  HI(0, "StatusReplace", { bg = accent_purple, fg = surface_panel_alt })

  HI(0, "TabLineSel", { bg = surface_subtle, fg = accent_green })
  HI(0, "TabLineFill", { bg = surface_subtle, fg = text_dim })
  HI(0, "TabLine", { bg = surface_subtle, fg = text_dim })

  -- ============================================================
  -- NVIMTREE
  -- ============================================================

  HI(0, "NvimTreeEmptyFolderName", { fg = accent_yellow_soft })
  HI(0, "NvimTreeFolderIcon", { fg = accent_rose_dust })
  HI(0, "NvimTreeFolderName", { fg = accent_amber })
  HI(0, "NvimTreeImageFile", { fg = accent_rose_dust })
  HI(0, "NvimTreeIndentMarker", { fg = neutral_2 })
  HI(0, "NvimTreeOpenedFolderName", { fg = accent_yellow_soft })
  HI(0, "NvimTreeWinSeparator", { bg = surface_panel_alt, fg = surface_panel_alt })
  HI(0, "NvimTreeNormal", { bg = surface_panel_alt, fg = text_secondary })

  -- ============================================================
  -- NVIM INTERNAL SYNTAX GROUPS
  -- ============================================================

  HI(0, "NvimAnd", { link = "NvimBinaryOperator" })
  HI(0, "NvimArrow", { link = "Delimiter" })
  HI(0, "NvimAssignment", { link = "Operator" })
  HI(0, "NvimAssignmentWithAddition", { link = "NvimAugmentedAssignment" })
  HI(0, "NvimAssignmentWithConcatenation", { link = "NvimAugmentedAssignment" })
  HI(0, "NvimAssignmentWithSubtraction", { link = "NvimAugmentedAssignment" })
  HI(0, "NvimAugmentedAssignment", { link = "NvimAssignment" })
  HI(0, "NvimBinaryMinus", { link = "NvimBinaryOperator" })
  HI(0, "NvimBinaryOperator", { link = "NvimOperator" })
  HI(0, "NvimBinaryPlus", { link = "NvimBinaryOperator" })
  HI(0, "NvimCallingParenthesis", { link = "NvimParenthesis" })
  HI(0, "NvimColon", { link = "Delimiter" })
  HI(0, "NvimComma", { link = "Delimiter" })
  HI(0, "NvimComparison", { link = "NvimBinaryOperator" })
  HI(0, "NvimComparisonModifier", { link = "NvimComparison" })
  HI(0, "NvimConcat", { link = "NvimBinaryOperator" })
  HI(0, "NvimConcatOrSubscript", { link = "NvimConcat" })
  HI(0, "NvimContainer", { link = "NvimParenthesis" })
  HI(0, "NvimCurly", { link = "NvimSubscript" })
  HI(0, "NvimDict", { link = "NvimContainer" })
  HI(0, "NvimDivision", { link = "NvimBinaryOperator" })
  HI(0, "NvimDoubleQuote", { link = "NvimStringQuote" })
  HI(0, "NvimDoubleQuotedBody", { link = "NvimStringBody" })
  HI(0, "NvimDoubleQuotedEscape", { link = "NvimStringSpecial" })
  HI(0, "NvimDoubleQuotedUnknownEscape", { link = "NvimInvalidValue" })
  HI(0, "NvimEnvironmentSigil", { link = "NvimOptionSigil" })
  HI(0, "NvimFigureBrace", { link = "NvimInternalError" })
  HI(0, "NvimFloat", { link = "NvimNumber" })
  HI(0, "NvimIdentifier", { link = "Identifier" })
  HI(0, "NvimIdentifierKey", { link = "NvimIdentifier" })
  HI(0, "NvimIdentifierName", { link = "NvimIdentifier" })
  HI(0, "NvimIdentifierScope", { link = "NvimIdentifier" })
  HI(0, "NvimIdentifierScopeDelimiter", { link = "NvimIdentifier" })
  HI(0, "NvimInvalid", { link = "Error" })
  HI(0, "NvimInvalidAnd", { link = "NvimInvalidBinaryOperator" })
  HI(0, "NvimInvalidArrow", { link = "NvimInvalidDelimiter" })
  HI(0, "Error", { bg = surface_main, fg = accent_orange })
  HI(0, "NvimInvalidAssignmentWithAddition", { link = "NvimInvalidAugmentedAssignment" })
  HI(0, "NvimInvalidAssignmentWithConcatenation", { link = "NvimInvalidAugmentedAssignment" })
  HI(0, "NvimInvalidAssignmentWithSubtraction", { link = "NvimInvalidAugmentedAssignment" })
  HI(0, "NvimInvalidAugmentedAssignment", { link = "NvimInvalidAssignment" })
  HI(0, "NvimInvalidBinaryMinus", { link = "NvimInvalidBinaryOperator" })
  HI(0, "NvimInvalidBinaryOperator", { link = "NvimInvalidOperator" })
  HI(0, "NvimInvalidBinaryPlus", { link = "NvimInvalidBinaryOperator" })
  HI(0, "NvimInvalidCallingParenthesis", { link = "NvimInvalidParenthesis" })
  HI(0, "NvimInvalidColon", { link = "NvimInvalidDelimiter" })
  HI(0, "NvimInvalidComma", { link = "NvimInvalidDelimiter" })
  HI(0, "NvimInvalidComparison", { link = "NvimInvalidBinaryOperator" })
  HI(0, "NvimInvalidComparisonModifier", { link = "NvimInvalidComparison" })
  HI(0, "NvimInvalidConcat", { link = "NvimInvalidBinaryOperator" })
  HI(0, "NvimInvalidConcatOrSubscript", { link = "NvimInvalidConcat" })
  HI(0, "NvimInvalidContainer", { link = "NvimInvalidParenthesis" })
  HI(0, "NvimInvalidCurly", { link = "NvimInvalidSubscript" })
  HI(0, "NvimInvalidDelimiter", { link = "NvimInvalid" })
  HI(0, "NvimInvalidDict", { link = "NvimInvalidContainer" })
  HI(0, "NvimInvalidDivision", { link = "NvimInvalidBinaryOperator" })
  HI(0, "NvimInvalidDoubleQuote", { link = "NvimInvalidStringQuote" })
  HI(0, "NvimInvalidDoubleQuotedBody", { link = "NvimInvalidStringBody" })
  HI(0, "NvimInvalidDoubleQuotedEscape", { link = "NvimInvalidStringSpecial" })
  HI(0, "NvimInvalidDoubleQuotedUnknownEscape", { link = "NvimInvalidValue" })
  HI(0, "NvimInvalidEnvironmentName", { link = "NvimInvalidIdentifier" })
  HI(0, "NvimInvalidEnvironmentSigil", { link = "NvimInvalidOptionSigil" })
  HI(0, "NvimInvalidFigureBrace", { link = "NvimInvalidDelimiter" })
  HI(0, "NvimInvalidFloat", { link = "NvimInvalidNumber" })
  HI(0, "NvimInvalidIdentifier", { link = "NvimInvalidValue" })
  HI(0, "NvimInvalidIdentifierKey", { link = "NvimInvalidIdentifier" })
  HI(0, "NvimInvalidIdentifierName", { link = "NvimInvalidIdentifier" })
  HI(0, "NvimInvalidIdentifierScope", { link = "NvimInvalidIdentifier" })
  HI(0, "NvimInvalidIdentifierScopeDelimiter", { link = "NvimInvalidIdentifier" })
  HI(0, "NvimInvalidLambda", { link = "NvimInvalidParenthesis" })
  HI(0, "NvimInvalidList", { link = "NvimInvalidContainer" })
  HI(0, "NvimInvalidMod", { link = "NvimInvalidBinaryOperator" })
  HI(0, "NvimInvalidMultiplication", { link = "NvimInvalidBinaryOperator" })
  HI(0, "NvimInvalidNestingParenthesis", { link = "NvimInvalidParenthesis" })
  HI(0, "NvimInvalidNot", { link = "NvimInvalidUnaryOperator" })
  HI(0, "NvimInvalidNumber", { link = "NvimInvalidValue" })
  HI(0, "NvimInvalidNumberPrefix", { link = "NvimInvalidNumber" })
  HI(0, "NvimInvalidOperator", { link = "NvimInvalid" })
  HI(0, "NvimInvalidOptionName", { link = "NvimInvalidIdentifier" })
  HI(0, "NvimInvalidOptionScope", { link = "NvimInvalidIdentifierScope" })
  HI(0, "NvimInvalidOptionScopeDelimiter", { link = "NvimInvalidIdentifierScopeDelimiter" })
  HI(0, "NvimInvalidOptionSigil", { link = "NvimInvalidIdentifier" })
  HI(0, "NvimInvalidOr", { link = "NvimInvalidBinaryOperator" })
  HI(0, "NvimInvalidParenthesis", { link = "NvimInvalidDelimiter" })
  HI(0, "NvimInvalidPlainAssignment", { link = "NvimInvalidAssignment" })
  HI(0, "NvimInvalidRegister", { link = "NvimInvalidValue" })
  HI(0, "NvimInvalidSingleQuote", { link = "NvimInvalidStringQuote" })
  HI(0, "NvimInvalidSingleQuotedBody", { link = "NvimInvalidStringBody" })
  HI(0, "NvimInvalidSingleQuotedQuote", { link = "NvimInvalidStringSpecial" })
  HI(0, "NvimInvalidSingleQuotedUnknownEscape", { link = "NvimInternalError" })
  HI(0, "NvimInvalidSpacing", { link = "ErrorMsg" })
  HI(0, "NvimInvalidString", { link = "NvimInvalidValue" })
  HI(0, "NvimInvalidStringBody", { link = "NvimStringBody" })
  HI(0, "NvimInvalidStringQuote", { link = "NvimInvalidString" })
  HI(0, "NvimInvalidStringSpecial", { link = "NvimStringSpecial" })
  HI(0, "NvimInvalidSubscript", { link = "NvimInvalidParenthesis" })
  HI(0, "NvimInvalidSubscriptBracket", { link = "NvimInvalidSubscript" })
  HI(0, "NvimInvalidSubscriptColon", { link = "NvimInvalidSubscript" })
  HI(0, "NvimInvalidTernary", { link = "NvimInvalidOperator" })
  HI(0, "NvimInvalidTernaryColon", { link = "NvimInvalidTernary" })
  HI(0, "NvimInvalidUnaryMinus", { link = "NvimInvalidUnaryOperator" })
  HI(0, "NvimInvalidUnaryOperator", { link = "NvimInvalidOperator" })
  HI(0, "NvimInvalidUnaryPlus", { link = "NvimInvalidUnaryOperator" })
  HI(0, "NvimInvalidValue", { link = "NvimInvalid" })
  HI(0, "NvimLambda", { link = "NvimParenthesis" })
  HI(0, "NvimList", { link = "NvimContainer" })
  HI(0, "NvimMod", { link = "NvimBinaryOperator" })
  HI(0, "NvimMultiplication", { link = "NvimBinaryOperator" })
  HI(0, "NvimNestingParenthesis", { link = "NvimParenthesis" })
  HI(0, "NvimNot", { link = "NvimUnaryOperator" })
  HI(0, "NvimNumber", { link = "Number" })
  HI(0, "NvimNumberPrefix", { link = "Type" })
  HI(0, "NvimOperator", { link = "Operator" })
  HI(0, "NvimOptionName", { link = "NvimIdentifier" })
  HI(0, "NvimOptionScope", { link = "NvimIdentifierScope" })
  HI(0, "NvimOptionScopeDelimiter", { link = "NvimIdentifierScopeDelimiter" })
  HI(0, "NvimOptionSigil", { link = "Type" })
  HI(0, "NvimOr", { link = "NvimBinaryOperator" })
  HI(0, "NvimParenthesis", { link = "Delimiter" })
  HI(0, "NvimPlainAssignment", { link = "NvimAssignment" })
  HI(0, "NvimRegister", { link = "SpecialChar" })
  HI(0, "NvimSingleQuote", { link = "NvimStringQuote" })
  HI(0, "NvimSingleQuotedBody", { link = "NvimStringBody" })
  HI(0, "NvimSingleQuotedQuote", { link = "NvimStringSpecial" })
  HI(0, "NvimSingleQuotedUnknownEscape", { link = "NvimInternalError" })
  HI(0, "NvimSpacing", { link = "Normal" })
  HI(0, "NvimString", { link = "String" })
  HI(0, "NvimStringBody", { link = "NvimString" })
  HI(0, "NvimStringQuote", { link = "NvimString" })
  HI(0, "NvimStringSpecial", { link = "SpecialChar" })
  HI(0, "NvimSubscript", { link = "NvimParenthesis" })
  HI(0, "NvimSubscriptBracket", { link = "NvimSubscript" })
  HI(0, "NvimSubscriptColon", { link = "NvimSubscript" })
  HI(0, "NvimTernary", { link = "NvimOperator" })
  HI(0, "NvimTernaryColon", { link = "NvimTernary" })
  HI(0, "NvimUnaryMinus", { link = "NvimUnaryOperator" })
  HI(0, "NvimUnaryOperator", { link = "NvimOperator" })
  HI(0, "NvimUnaryPlus", { link = "NvimUnaryOperator" })
  HI(0, "NvimEnvironmentName", { link = "NvimIdentifier" })
  HI(0, "NvimInvalidAssignment", { link = "NvimInvalid" })

  -- ============================================================
  -- BASE SYNTAX GROUPS
  -- ============================================================

  HI(0, "Keyword", { fg = accent_rose })
  HI(0, "Constant", { fg = accent_yellow })
  HI(0, "Number", { fg = accent_yellow })
  HI(0, "Boolean", { fg = accent_yellow })
  HI(0, "Function", { fg = accent_yellow })
  HI(0, "Float", { fg = accent_yellow })
  HI(0, "Delimiter", { fg = accent_purple })
  HI(0, "Define", { fg = accent_rose })
  HI(0, "Identifier", { fg = accent_orange })
  HI(0, "Conditional", { fg = accent_rose })
  HI(0, "Statement", { fg = special_statement })
  HI(0, "Operator", { fg = text_primary })
  HI(0, "Include", { fg = accent_yellow })
  HI(0, "Label", { fg = accent_olive })
  HI(0, "PreProc", { fg = accent_olive })
  HI(0, "Type", { fg = accent_olive })
  HI(0, "Character", { fg = accent_orange })
  HI(0, "String", { fg = accent_green })
  HI(0, "Substitute", { bg = accent_olive, fg = surface_subtle })
  HI(0, "WarningMsg", { fg = accent_orange })
  HI(0, "Title", { fg = accent_yellow })
  HI(0, "ModeMsg", { fg = accent_green })

  -- ============================================================
  -- ILLUMINATION / WORD UNDER CURSOR
  -- ============================================================

  HI(0, "IlluminatedWordRead", { sp = text_muted, underline = true })
  HI(0, "IlluminatedWordWrite", { sp = text_muted, underline = true })
  HI(0, "IlluminatedWordText", { sp = text_muted, underline = true })

  -- ============================================================
  -- TELESCOPE
  -- ============================================================

  HI(0, "TelescopePreviewBlock", { default = true, link = "Constant" })
  HI(0, "TelescopePreviewCharDev", { default = true, link = "Constant" })
  HI(0, "TelescopePreviewDate", { default = true, link = "Directory" })
  HI(0, "TelescopePreviewDirectory", { default = true, link = "Directory" })
  HI(0, "TelescopePreviewExecute", { default = true, link = "String" })
  HI(0, "TelescopePreviewGroup", { default = true, link = "Constant" })
  HI(0, "TelescopePreviewHyphen", { default = true, link = "NonText" })
  HI(0, "TelescopePreviewLink", { default = true, link = "Special" })
  HI(0, "TelescopePreviewMatch", { default = true, link = "Search" })
  HI(0, "TelescopePreviewMessage", { default = true, link = "TelescopePreviewNormal" })
  HI(0, "TelescopePreviewMessageFillchar", { default = true, link = "TelescopePreviewMessage" })
  HI(0, "TelescopePreviewPipe", { default = true, link = "Constant" })
  HI(0, "TelescopePreviewRead", { default = true, link = "Constant" })
  HI(0, "TelescopePreviewSize", { default = true, link = "String" })
  HI(0, "TelescopePreviewSocket", { default = true, link = "Statement" })
  HI(0, "TelescopePreviewSticky", { default = true, link = "Keyword" })
  HI(0, "TelescopePreviewUser", { default = true, link = "Constant" })
  HI(0, "TelescopePreviewWrite", { default = true, link = "Statement" })
  HI(0, "TelescopeTitle", { default = true, link = "TelescopeBorder" })
  HI(0, "TelescopeSelectionCaret", { default = true, link = "TelescopeSelection" })
  HI(0, "TelescopeSelection", { bg = surface_accent })
  HI(0, "TelescopeResultsVariable", { default = true, link = "SpecialChar" })
  HI(0, "TelescopeResultsTitle", { bg = surface_panel, fg = surface_panel })
  HI(0, "TelescopeResultsStruct", { default = true, link = "Struct" })
  HI(0, "TelescopeResultsSpecialComment", { default = true, link = "SpecialComment" })
  HI(0, "TelescopeResultsOperator", { default = true, link = "Operator" })
  HI(0, "TelescopeResultsNumber", { default = true, link = "Number" })
  HI(0, "TelescopeResultsNormal", { default = true, link = "TelescopeNormal" })
  HI(0, "TelescopeResultsMethod", { default = true, link = "Method" })
  HI(0, "TelescopeResultsLineNr", { default = true, link = "LineNr" })
  HI(0, "TelescopeResultsIdentifier", { default = true, link = "Identifier" })
  HI(0, "TelescopeResultsFunction", { default = true, link = "Function" })
  HI(0, "TelescopeResultsField", { default = true, link = "Function" })
  HI(0, "TelescopeResultsDiffUntracked", { default = true, link = "NonText" })
  HI(0, "TelescopeResultsDiffDelete", { default = true, link = "DiffDelete" })
  HI(0, "TelescopeResultsDiffChange", { default = true, link = "DiffChange" })
  HI(0, "TelescopeResultsDiffAdd", { default = true, link = "DiffAdd" })
  HI(0, "TelescopeResultsConstant", { default = true, link = "Constant" })
  HI(0, "TelescopeResultsComment", { default = true, link = "Comment" })
  HI(0, "TelescopeResultsClass", { default = true, link = "Function" })
  HI(0, "TelescopeResultsBorder", { default = true, link = "TelescopeBorder" })
  HI(0, "TelescopePromptTitle", { bg = accent_orange, fg = surface_prompt })
  HI(0, "TelescopePromptPrefix", { bg = surface_accent, fg = accent_orange })
  HI(0, "TelescopePromptNormal", { bg = surface_accent, fg = text_primary })
  HI(0, "TelescopePromptCounter", { default = true, link = "NonText" })
  HI(0, "TelescopePromptBorder", { bg = surface_accent, fg = surface_accent })
  HI(0, "TelescopePreviewTitle", { bg = accent_green, fg = surface_prompt })
  HI(0, "TelescopePreviewNormal", { default = true, link = "TelescopeNormal" })
  HI(0, "TelescopePreviewLine", { bg = surface_subtle })
  HI(0, "TelescopePreviewBorder", { default = true, link = "TelescopeBorder" })
  HI(0, "TelescopeNormal", { bg = surface_panel })
  HI(0, "TelescopeMultiSelection", { default = true, link = "Type" })
  HI(0, "TelescopeMultiIcon", { default = true, link = "Identifier" })
  HI(0, "TelescopeMatching", { bold = true, cterm = { bold = true, italic = true }, fg = accent_purple, italic = true })
  HI(0, "TelescopeBorder", { bg = surface_panel, fg = surface_panel })

  -- ============================================================
  -- HYDRA / ALPHA / SMALL DASHBOARD UI
  -- ============================================================

  HI(0, "HydraAmaranth", { fg = accent_magenta })
  HI(0, "HydraBlue", { fg = accent_amber })
  HI(0, "HydraHint", { bg = surface_hint })
  HI(0, "HydraRed", { fg = accent_rose_dust })
  HI(0, "HydraTeal", { fg = accent_purple })

  HI(0, "alpha1", { fg = neutral_3 })
  HI(0, "alpha2", { fg = text_secondary })
  HI(0, "alpha3", { fg = neutral_3 })

  -- ============================================================
  -- FINAL DIFF / NEOGIT OVERRIDES (AUTHORITATIVE)
  -- ============================================================

  HI(0, "DiffAdd", { bg = surface_main, fg = diff_add })
  HI(0, "DiffDelete", { bg = surface_main, fg = diff_delete })
  HI(0, "DiffChange", { bg = surface_main, fg = diff_change })
  HI(0, "DiffText", { bg = surface_main, fg = diff_text, bold = true })

  HI(0, "@text.diff.add", { bg = surface_main, fg = diff_add })
  HI(0, "@text.diff.delete", { bg = surface_main, fg = diff_delete })

  HI(0, "DiffAdded", { bg = surface_main, fg = diff_add })
  HI(0, "DiffRemoved", { bg = surface_main, fg = diff_delete })
  HI(0, "DiffFile", { bg = surface_main, fg = text_primary })
  HI(0, "DiffNewFile", { bg = surface_main, fg = diff_add })
  HI(0, "DiffLine", { bg = surface_main, fg = diff_change })

  HI(0, "NeogitDiffContext", { bg = surface_main, fg = text_primary })
  HI(0, "NeogitDiffAdd", { bg = surface_main, fg = diff_add })
  HI(0, "NeogitDiffDelete", { bg = surface_main, fg = diff_delete })
  HI(0, "NeogitCommitViewDescription", { bg = surface_main, fg = accent_magenta, bold = true })

  HI(0, "NeogitDiffHeader", { bg = surface_main, fg = diff_change, bold = true })
  HI(0, "NeogitDiffHeaderCursor", { bg = neutral_1, fg = diff_change, bold = true })
  HI(0, "NeogitDiffHeaderHighlight", { bg = surface_main, fg = diff_change, bold = true })
  HI(0, "NeogitFilePath", { bg = surface_main, fg = accent_yellow, bold = true })

  HI(0, "NeogitDiffDeletions", { bg = surface_main, fg = diff_delete, bold = false })
  HI(0, "NeogitDiffAdditions", { bg = surface_main, fg = diff_add, bold = false })
  HI(0, "NeogitDiffContextHighlight", { bg = surface_main, fg = text_primary, bold = false })
  HI(0, "NeogitDiffAddHighlight", { bg = surface_main, fg = diff_add, bold = false })
  HI(0, "NeogitDiffDeleteHighlight", { bg = surface_main, fg = diff_delete, bold = false })

  HI(0, "NeogitDiffContextCursor", { bg = neutral_1, fg = text_primary, bold = false })
  HI(0, "NeogitDiffAddCursor", { bg = neutral_1, fg = support_green, bold = false })
  HI(0, "NeogitDiffDeleteCursor", { bg = neutral_1, fg = support_red, bold = false })

  HI(0, "NeogitChangeAdded", { fg = diff_add, bold = true })
  HI(0, "NeogitChangeModified", { fg = diff_change, bold = true })
  HI(0, "NeogitChangeDeleted", { fg = diff_delete, bold = true })

  HI(0, "NeogitHunkHeader", { bg = surface_main, fg = accent_gold, bold = true })
  HI(0, "NeogitHunkHeaderCursor", { bg = neutral_1, fg = accent_gold, bold = true })
  HI(0, "NeogitHunkHeaderHighlight", { bg = surface_main, fg = accent_gold, bold = true })

  HI(0, "CursorLine", { bg = surface_main })
  HI(0, "CursorLineNr", { bg = surface_main, fg = text_muted })
  HI(0, "CursorLineSign", { bg = surface_main })
end

return M
