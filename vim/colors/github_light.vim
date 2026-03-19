" github_light.vim — GitHub's Prettylights syntax theme for Vim
" Based on Primer Primitives (current github.com colors)

set background=light
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'github_light'

" --- Base UI ---
hi Normal       guifg=#1f2328 guibg=#ffffff gui=NONE
hi NonText      guifg=#818B98 guibg=NONE    gui=NONE
hi Cursor       guifg=#ffffff guibg=#1f2328
hi CursorLine   guifg=NONE    guibg=#F6F8FA gui=NONE
hi CursorLineNr guifg=#1f2328 guibg=#F6F8FA gui=NONE
hi LineNr       guifg=#818B98 guibg=NONE    gui=NONE
hi SignColumn   guifg=NONE    guibg=#ffffff gui=NONE
hi VertSplit    guifg=#D1D9E0 guibg=NONE    gui=NONE
hi ColorColumn  guifg=NONE    guibg=#F6F8FA gui=NONE
hi Folded       guifg=#59636E guibg=#F6F8FA gui=NONE
hi FoldColumn   guifg=#ffffff guibg=#ffffff gui=NONE
hi MatchParen   guifg=#1f2328 guibg=#ddf4ff gui=bold
hi Conceal      guifg=#818B98 guibg=NONE    gui=NONE

" --- Selection & Search ---
hi Visual       guifg=NONE    guibg=#ddf4ff gui=NONE
hi Search       guifg=#1f2328 guibg=#fae17d gui=NONE
hi IncSearch    guifg=#ffffff guibg=#0969da gui=NONE
hi Substitute   guifg=#ffffff guibg=#0969da gui=NONE

" --- Popup / Float ---
hi Pmenu        guifg=#1f2328 guibg=#F6F8FA gui=NONE
hi PmenuSel     guifg=#ffffff guibg=#0969da gui=NONE
hi PmenuSbar    guifg=NONE    guibg=#EFF2F5 gui=NONE
hi PmenuThumb   guifg=NONE    guibg=#818B98 gui=NONE
hi NormalFloat  guifg=#1f2328 guibg=#F6F8FA gui=NONE
hi FloatBorder  guifg=#D1D9E0 guibg=#F6F8FA gui=NONE

" --- Status / Tab line ---
hi StatusLine   guifg=#1f2328 guibg=#EFF2F5 gui=NONE
hi StatusLineNC guifg=#59636E guibg=#F6F8FA gui=NONE
hi TabLine      guifg=#59636E guibg=#EFF2F5 gui=NONE
hi TabLineSel   guifg=#1f2328 guibg=#ffffff gui=bold
hi TabLineFill  guifg=NONE    guibg=#EFF2F5 gui=NONE

" --- Messages ---
hi ErrorMsg     guifg=#cf222e guibg=NONE gui=bold
hi WarningMsg   guifg=#bc4c00 guibg=NONE gui=NONE
hi MoreMsg      guifg=#0550ae guibg=NONE gui=NONE
hi Question     guifg=#0550ae guibg=NONE gui=NONE
hi Title        guifg=#0550ae guibg=NONE gui=bold

" --- Spelling ---
hi SpellBad     guifg=NONE guibg=NONE gui=undercurl guisp=#cf222e
hi SpellCap     guifg=NONE guibg=NONE gui=undercurl guisp=#0969da
hi SpellRare    guifg=NONE guibg=NONE gui=undercurl guisp=#8250df
hi SpellLocal   guifg=NONE guibg=NONE gui=undercurl guisp=#0969da

" ============================================
"  Syntax — GitHub Prettylights (Primer v2)
" ============================================

" Comment                 → neutral.9  #59636E
hi Comment      guifg=#59636E guibg=NONE gui=NONE

" Keyword / Statement     → red.5  #cf222e
hi Keyword      guifg=#cf222e guibg=NONE gui=NONE
hi Statement    guifg=#cf222e guibg=NONE gui=NONE
hi Conditional  guifg=#cf222e guibg=NONE gui=NONE
hi Repeat       guifg=#cf222e guibg=NONE gui=NONE
hi Label        guifg=#cf222e guibg=NONE gui=NONE
hi Exception    guifg=#cf222e guibg=NONE gui=NONE
hi Operator     guifg=#cf222e guibg=NONE gui=NONE

" Storage / Type          → red.5  #cf222e  (same as keyword)
hi StorageClass guifg=#cf222e guibg=NONE gui=NONE
hi Structure    guifg=#cf222e guibg=NONE gui=NONE
hi Typedef      guifg=#cf222e guibg=NONE gui=NONE

" String                  → blue.8  #0a3069
hi String       guifg=#0a3069 guibg=NONE gui=NONE
hi Character    guifg=#0a3069 guibg=NONE gui=NONE

" Constant / Number       → blue.6  #0550ae
hi Constant     guifg=#0550ae guibg=NONE gui=NONE
hi Number       guifg=#0550ae guibg=NONE gui=NONE
hi Boolean      guifg=#0550ae guibg=NONE gui=NONE
hi Float        guifg=#0550ae guibg=NONE gui=NONE

" Entity / Function       → purple.6  #6639ba
hi Function     guifg=#6639ba guibg=NONE gui=NONE
hi Identifier   guifg=#1f2328 guibg=NONE gui=NONE

" Type → orange.6  #953800
" In Ruby: rubyConstant → Type covers BOTH PascalCase and SCREAMING_CASE.
" We override rubyConstant to split them apart after loading Ruby syntax.
hi Type         guifg=#953800 guibg=NONE gui=NONE

" PreProc                 → red.5  #cf222e
hi PreProc      guifg=#cf222e guibg=NONE gui=NONE
hi Include      guifg=#cf222e guibg=NONE gui=NONE
hi Define       guifg=#cf222e guibg=NONE gui=NONE
hi Macro        guifg=#cf222e guibg=NONE gui=NONE
hi PreCondit    guifg=#cf222e guibg=NONE gui=NONE

" Special                 → blue.6  #0550ae
hi Special      guifg=#0550ae guibg=NONE gui=NONE
hi SpecialChar  guifg=#0550ae guibg=NONE gui=NONE
hi Delimiter    guifg=#1f2328 guibg=NONE gui=NONE
hi SpecialComment guifg=#59636E guibg=NONE gui=NONE

" Tag (HTML/XML)          → blue.6  #0550ae
hi Tag          guifg=#0550ae guibg=NONE gui=NONE

" Error / Underlined
hi Error        guifg=#cf222e guibg=#ffebe9 gui=NONE
hi Underlined   guifg=#0550ae guibg=NONE    gui=underline
hi Todo         guifg=#0550ae guibg=#ddf4ff  gui=bold

" --- Diff ---
hi DiffAdd      guifg=#116329 guibg=#dafbe1 gui=NONE
hi DiffChange   guifg=#953800 guibg=#ffd8b5 gui=NONE
hi DiffDelete   guifg=#82071e guibg=#ffebe9 gui=NONE
hi DiffText     guifg=#953800 guibg=#ffd8b5 gui=bold
hi Added        guifg=#116329 guibg=NONE    gui=NONE
hi Changed      guifg=#953800 guibg=NONE    gui=NONE
hi Removed      guifg=#82071e guibg=NONE    gui=NONE

" --- Ruby-specific (Vim syntax) ---
" Vim's ruby.vim routes both PascalCase and SCREAMING_CASE through
" rubyConstant → Type. GitHub (tree-sitter) distinguishes them:
"   pl-v  (orange) → PascalCase class/module refs: Header, Struct, File
"   pl-c1 (blue)   → SCREAMING_CASE constants: SEPARATOR, true, false, numbers
"   pl-en (purple)  → ALL method calls: .split, puts, assert_equal(
"   pl-pds(navy)   → symbols: :level, :line
augroup github_light_ruby
  autocmd!
  " Use Syntax event (fires AFTER ruby.vim loads) so our syn commands survive.
  " FileType fires BEFORE the syntax file; Syntax fires AFTER.
  autocmd Syntax ruby call s:GitHubRubySyntax()
augroup END

function! s:GitHubRubySyntax()
  " rubyConstant → blue (SCREAMING_CASE like SEPARATOR)
  " Must break the link to Type first, otherwise it overrides our color
  hi! link rubyConstant NONE
  hi rubyConstant       guifg=#0550ae gui=NONE
  " Class/module name definitions → orange
  hi! link rubyClassName NONE
  hi rubyClassName      guifg=#953800 gui=NONE
  hi! link rubyModuleName NONE
  hi rubyModuleName     guifg=#953800 gui=NONE
  " PascalCase references (Header, Struct, File) → orange
  " containedin= required to work inside rubyMethodBlock, rubyDoBlock, etc.
  syn match rubyPascalIdent /\<[A-Z]\w*[a-z]\w*\>/ containedin=ALLBUT,rubyComment,rubyString,rubyStringNotTop,rubyRegexp,rubyHeredocStart,rubyDocumentation
  hi rubyPascalIdent    guifg=#953800 gui=NONE
  " Symbols (:level, :line) → dark navy (GitHub uses string color)
  hi rubySymbol         guifg=#0a3069 gui=NONE
  " Method calls after dot → purple (.split, .each, .any?, .new)
  syn match rubyDotCall /\.\@1<=\h\w*[?!]\?/ containedin=ALLBUT,rubyComment,rubyString,rubyStringNotTop,rubyRegexp,rubyHeredocStart,rubyDocumentation
  hi rubyDotCall        guifg=#6639ba gui=NONE
  " Bare function calls followed by ( → purple (chunk_markdown(, assert_equal()
  syn match rubyFuncCall /\<[a-z_]\w*[?!]\?\ze\s*(/ containedin=ALLBUT,rubyComment,rubyString,rubyStringNotTop,rubyRegexp,rubyHeredocStart,rubyDocumentation
  hi rubyFuncCall       guifg=#6639ba gui=NONE
  " Common methods called without parens → purple (puts, print)
  syn keyword rubyBuiltinCall puts print p pp containedin=ALLBUT,rubyComment,rubyString,rubyStringNotTop,rubyRegexp,rubyHeredocStart,rubyDocumentation
  hi rubyBuiltinCall    guifg=#6639ba gui=NONE
  " Capitalized method calls like Foo() → purple
  hi rubyCapitalizedMethod guifg=#6639ba gui=NONE
endfunction

" Apply immediately if a Ruby buffer is already active (syntax reset already
" fired before the autocmd was registered, so it missed the Syntax event).
if &filetype ==# 'ruby'
  call s:GitHubRubySyntax()
endif

" --- Treesitter overrides (Neovim 0.8+) ---
" The @-prefixed groups only work in Neovim; guard with has('nvim')
if has('nvim')
  lua << EOF
  local hl = vim.api.nvim_set_hl
  -- Comment
  hl(0, "@comment",               { fg = "#59636E" })
  -- Keyword
  hl(0, "@keyword",               { fg = "#cf222e" })
  hl(0, "@keyword.function",      { fg = "#cf222e" })
  hl(0, "@keyword.operator",      { fg = "#cf222e" })
  hl(0, "@keyword.return",        { fg = "#cf222e" })
  hl(0, "@conditional",           { fg = "#cf222e" })
  hl(0, "@repeat",                { fg = "#cf222e" })
  hl(0, "@exception",             { fg = "#cf222e" })
  hl(0, "@include",               { fg = "#cf222e" })
  -- String
  hl(0, "@string",                { fg = "#0a3069" })
  hl(0, "@string.escape",         { fg = "#0550ae" })
  hl(0, "@string.regex",          { fg = "#0a3069" })
  hl(0, "@string.special",        { fg = "#0550ae" })
  hl(0, "@character",             { fg = "#0a3069" })
  -- Constant / Number
  hl(0, "@number",                { fg = "#0550ae" })
  hl(0, "@boolean",               { fg = "#0550ae" })
  hl(0, "@float",                 { fg = "#0550ae" })
  hl(0, "@constant",              { fg = "#0550ae" })
  hl(0, "@constant.builtin",      { fg = "#0550ae" })
  hl(0, "@constant.macro",        { fg = "#0550ae" })
  -- Function / Method
  hl(0, "@function",              { fg = "#6639ba" })
  hl(0, "@function.builtin",      { fg = "#6639ba" })
  hl(0, "@function.call",         { fg = "#6639ba" })
  hl(0, "@function.macro",        { fg = "#6639ba" })
  hl(0, "@method",                { fg = "#6639ba" })
  hl(0, "@method.call",           { fg = "#6639ba" })
  hl(0, "@constructor",           { fg = "#6639ba" })
  -- Variable / Parameter
  hl(0, "@parameter",             { fg = "#1f2328" })
  hl(0, "@variable",              { fg = "#1f2328" })
  hl(0, "@variable.builtin",      { fg = "#0550ae" })
  hl(0, "@field",                 { fg = "#1f2328" })
  hl(0, "@property",              { fg = "#1f2328" })
  -- Type (PascalCase class/module names → rusty orange)
  hl(0, "@type",                  { fg = "#953800" })
  hl(0, "@type.builtin",          { fg = "#953800" })
  hl(0, "@type.definition",       { fg = "#953800" })
  hl(0, "@namespace",             { fg = "#953800" })
  hl(0, "@symbol",                { fg = "#0550ae" })
  -- Tag (HTML/XML)
  hl(0, "@tag",                   { fg = "#0550ae" })
  hl(0, "@tag.attribute",         { fg = "#953800" })
  hl(0, "@tag.delimiter",         { fg = "#1f2328" })
  -- Markup / Text
  hl(0, "@text.literal",          { fg = "#0a3069" })
  hl(0, "@text.uri",              { fg = "#0a3069", underline = true })
  hl(0, "@text.reference",        { fg = "#0550ae" })
  hl(0, "@text.strong",           { fg = "#1f2328", bold = true })
  hl(0, "@text.emphasis",         { fg = "#1f2328", italic = true })
  -- Punctuation
  hl(0, "@punctuation.bracket",   { fg = "#1f2328" })
  hl(0, "@punctuation.delimiter", { fg = "#1f2328" })
  hl(0, "@punctuation.special",   { fg = "#cf222e" })
  -- Ruby-specific
  hl(0, "@symbol.ruby",                    { fg = "#0550ae" })
  hl(0, "@string.special.symbol.ruby",     { fg = "#0550ae" })
  -- Diagnostics
  hl(0, "DiagnosticError",          { fg = "#cf222e" })
  hl(0, "DiagnosticWarn",           { fg = "#bc4c00" })
  hl(0, "DiagnosticInfo",           { fg = "#0550ae" })
  hl(0, "DiagnosticHint",           { fg = "#59636E" })
  hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#cf222e" })
  hl(0, "DiagnosticUnderlineWarn",  { undercurl = true, sp = "#bc4c00" })
  hl(0, "DiagnosticUnderlineInfo",  { undercurl = true, sp = "#0550ae" })
  hl(0, "DiagnosticUnderlineHint",  { undercurl = true, sp = "#59636E" })
EOF
endif
