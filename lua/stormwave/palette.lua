local M = {
  -- ============================================================
  -- TONAL FOUNDATION
  -- ============================================================

  bg_0              = "#101214",
  bg_1              = "#171A1D",
  bg_2              = "#262A2D",
  bg_3              = "#383E44",

  fg_0              = "#DCE4E6",
  fg_1              = "#C7D1D4",
  fg_2              = "#97A3A8",
  fg_3              = "#677178",

  neutral_0         = "#000000",
  neutral_1         = "#131518",
  neutral_2         = "#1F2327",
  neutral_3         = "#383E44",
  neutral_9         = "#FFFFFF",

  -- ============================================================
  -- SURFACE ROLES
  -- ============================================================

  surface_main      = "#101214",
  surface_subtle    = "#171A1D",
  surface_emphasis  = "#262A2D",
  surface_panel     = "#0D0F11",
  surface_panel_alt = "#0B0D0F",
  surface_accent    = "#1D2124",
  surface_prompt    = "#181B1E",
  surface_hint      = "#090B0D",

  -- ============================================================
  -- TEXT ROLES
  -- ============================================================

  text_primary      = "#DCE4E6",
  text_secondary    = "#C7D1D4",
  text_muted        = "#97A3A8",
  text_dim          = "#677178",

  -- ============================================================
  -- WARM / CORE ACCENTS (storm-shifted)
  -- ============================================================

  accent_red_deep     = "#4F3940",
  accent_rose         = "#9B737A",
  accent_rust         = "#7A5F66",
  accent_ember        = "#8B7D80",

  accent_orange       = "#8B7D80",
  accent_orange_soft  = "#A59898",

  accent_gold         = "#8FA6A8",
  accent_amber        = "#7E9799",
  accent_yellow       = "#B8C9CB",
  accent_yellow_soft  = "#D3DEDF",

  accent_olive        = "#6F817C",
  accent_olive_deep   = "#53615D",
  accent_yellow_green = "#8D9E99",

  accent_green        = "#5E7E78",
  accent_green_deep   = "#45605B",
  accent_moss         = "#4E6965",

  accent_purple       = "#6E7A84",
  accent_violet       = "#6A7682",
  accent_violet_soft  = "#89A6C0",
  accent_plum         = "#56606A",

  accent_magenta      = "#96A5AF",
  accent_rose_dust    = "#A7B4BA",

  -- ============================================================
  -- CONTROLLED / MUTED COOL ACCENTS
  -- ============================================================

  accent_aqua         = "#A8C9C9",
  accent_teal         = "#6F8F92",
  accent_cyan         = "#7C9EA0",
  accent_cyan_soft    = "#B8D4D4",

  accent_blue         = "#5E748A",
  accent_blue_soft    = "#89A6C0",
  accent_slate_blue   = "#62707B",

  accent_cyan_hot     = "#C4DEDE",
  accent_blue_hot     = "#9DB8CE",
  accent_blue_neon    = "#7A93A8",

  accent_sky          = "#B7C9D4",
  accent_lavender     = "#A3ADB6",

  accent_pink         = "#9A8B91",
  accent_pink_hot     = "#A07B86",

  -- ============================================================
  -- SOFT SUPPORT ACCENTS
  -- ============================================================

  support_green       = "#7FA29B",
  support_red         = "#8E777D",
  support_success     = "#5E7E78",
  support_ok          = "#A8C9C9",

  -- ============================================================
  -- SEMANTIC UI ROLES
  -- ============================================================

  ui_border           = "#DCE4E6",
  ui_selection        = "#262A2D",
  ui_selection_subtle = "#171A1D",
  ui_search_bg        = "#6F8F92",
  ui_search_fg        = "#101214",
  ui_incsearch_bg     = "#B8C9CB",
  ui_incsearch_fg     = "#101214",
  ui_cursor_bg        = "#DCE4E6",
  ui_cursor_fg        = "#101214",

  -- ============================================================
  -- DIAGNOSTIC SEMANTICS
  -- ============================================================

  diag_error          = "#9B737A",
  diag_warn           = "#B8C9CB",
  diag_info           = "#5E748A",
  diag_hint           = "#A8C9C9",

  -- ============================================================
  -- DIFF / GIT SEMANTICS
  -- ============================================================

  diff_add            = "#5E7E78",
  diff_delete         = "#9B737A",
  diff_change         = "#6F8F92",
  diff_text           = "#DCE4E6",

  -- ============================================================
  -- RARE / SPECIAL PURPOSE COLORS
  -- ============================================================

  special_statement   = "#96A5AF",
  special_rainbow_1   = "#F2F6F6",
  special_yellow      = "#D8E5E6",
  special_green       = "#7FA29B",
  special_red         = "#A07B86",

  -- ============================================================
  -- COMPATIBILITY ALIASES
  -- ============================================================

  bg                  = "#101214",
  bg_alt              = "#171A1D",
  bg_alt2             = "#262A2D",
  bg_panel            = "#0D0F11",
  bg_panel_alt        = "#0B0D0F",
  bg_accent           = "#1D2124",
  bg_prompt_title     = "#181B1E",
  bg_hint             = "#090B0D",

  fg                  = "#DCE4E6",
  fg_alt              = "#C7D1D4",
  fg_muted            = "#97A3A8",
  comment             = "#677178",
  grey                = "#131518",
  grey_alt            = "#1F2327",
  grey_bright         = "#383E44",
  black               = "#000000",
  white               = "#FFFFFF",

  red                 = "#7A5F66",
  red_dark            = "#4F3940",
  rose                = "#9B737A",
  green               = "#5E7E78",
  green_strong        = "#45605B",
  yellow              = "#8FA6A8",
  yellow_bright       = "#B8C9CB",
  yellow_soft         = "#D3DEDF",
  gold                = "#8FA6A8",
  olive               = "#6F817C",
  purple              = "#6E7A84",
  purple_alt          = "#96A5AF",
  violet              = "#6A7682",
  blue                = "#5E748A",

  cyan                = "#7C9EA0",
  cyan_alt            = "#6F8F92",
  cyan_bright         = "#A8C9C9",
  blue_bright         = "#89A6C0",
  blue_neon           = "#7A93A8",
  pink                = "#9A8B91",
  pink_bright         = "#A07B86",
  lavender            = "#A3ADB6",
  sky                 = "#B7C9D4",

  green_soft          = "#7FA29B",
  red_soft            = "#8E777D",
  success             = "#5E7E78",
  ok                  = "#A8C9C9",

  search_bg           = "#6F8F92",
  search_fg           = "#101214",
  incsearch_bg        = "#B8C9CB",
  incsearch_fg        = "#101214",

  cursor_bg           = "#DCE4E6",
  cursor_fg           = "#101214",

  border              = "#DCE4E6",
  selection           = "#262A2D",
  selection_alt       = "#171A1D",

  statement_red       = "#96A5AF",
  rainbow_1           = "#F2F6F6",
  pure_yellow         = "#D8E5E6",
  pure_green          = "#7FA29B",
  pure_red            = "#A07B86",
}

return M
