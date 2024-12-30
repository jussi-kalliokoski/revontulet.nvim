local C = {}

-- Palette
C.black0 = "#101010"
C.black1 = "#010719"
C.black2 = "#0B111F"
C.gray0 = "#171B29"
C.gray1 = "#2B303F"
C.gray2 = "#424756"
C.gray3 = "#595E6E"
C.gray4 = "#727788"
C.gray5 = "#8B90A2"
C.white_alt = "#C1C6D9"
C.white0 = "#B6B9C2"
C.white1 = "#C9CCD5"
C.white2 = "#DADDE6"
C.white3 = "#FFFFFF"
C.blue0 = "#002D90"
C.blue1 = "#4E72E4"
C.blue2 = "#7C98FF"
C.cyan0 = "#009597"
C.cyan1 = "#3BCACA"
C.cyan2 = "#54DDDE"
C.red0 = "#A70034"
C.red1 = "#D43B56"
C.red2 = "#F3596E"
C.orange0 = "#CB6626"
C.orange1 = "#EA803F"
C.orange2 = "#F98D4C"
C.yellow0 = "#A57D00"
C.yellow1 = "#DDAE36"
C.yellow2 = "#EEBF47"
C.green0 = "#43951E"
C.green1 = "#78C953"
C.green2 = "#89DA62"
C.magenta0 = "#883DAB"
C.magenta1 = "#C071E3"
C.magenta2 = "#DC8BFF"

-- Foregrounds
C.fg = C.white0
C.fg_bright = C.white1
C.fg_dark = C.white0
C.fg_sidebar = C.gray2
C.fg_fold = C.fg
C.fg_selected = C.fg_bright

-- Backgrounds
C.bg = C.gray0
C.bg_dark = C.black0
C.bg_sidebar = C.bg
C.bg_statusline = C.black0
C.bg_fold = C.gray2
C.bg_selected = C.gray2
C.bg_visual = C.gray1

-- Borders
C.border_fg = C.black0
C.border_bg = C.bg

-- Floating windows
C.float_bg = C.black1
C.float_fg = C.fg
C.float_border_fg = C.float_bg
C.float_border_bg = C.border_fg

-- Popup menu
C.popup_bg = C.float_bg
C.popup_fg = C.fg
C.popup_border_fg = C.bg
C.popup_border_bg = C.border_fg

-- Diagnostics
C.error = C.red2
C.warn = C.yellow1
C.warning = C.warn
C.hint = C.green2
C.info = C.blue2

-- Diff
C.diff_add = C.green1
C.diff_delete = C.red1
C.diff_change0 = C.blue1
C.diff_change2 = C.blue2

-- Git
C.git_add = C.green1
C.git_delete = C.red1
C.git_change = C.blue1

-- Highlighting
C.comment = C.gray4

local G = {}

G.Constant = { fg = C.magenta2 } -- (preferred) any constant
G.Number = { link = "Constant" } -- a number constant: 234, 0xff
G.Boolean = { link = "Number" } -- a boolean constant: TRUE, false
G.Float = { link = "Number" } -- a floating point constant: 2.3e10
G.String = { fg = C.green1 } -- a string constant: "this is a string"
G.Character = { link = "String" } -- a character constant: 'c', '\n'
G.Variable = { fg = C.fg } -- (preferred) any variable name
G.Namespace = { fg = C.yellow0 } -- a namespace name: std, os, etc.
G.Field = { fg = C.cyan1 } -- a field name
G.Title = { fg = C.yellow1 }
G.Builtin = { fg = C.blue0 } -- a builtin function name
G.Identifier = { fg = C.fg } -- (preferred) any identifier
G.Function = { fg = C.blue2 } -- function name (also: methods for classes)
G.Keyword = { fg = C.orange1 } -- any other keyword
G.Statement = { link = "Keyword" } -- (preferred) any statement
G.Conditional = { link = "Keyword" } -- if, then, else, endif, switch, etc.
G.Repeat = { link = "Keyword" } -- for, do, while, etc.
G.Label = { link = "Keyword" } -- case, default, etc.
G.Operator = { fg = C.fg } -- "sizeof", "+", "*", etc.
G.Macro = { fg = C.red1 } -- preprocessor #include, #define, #if
G.Exception = { link = "Macro" } -- try, catch, throw
G.PreProc = { link = "Macro" } -- generic preprocessor
G.Include = { link = "Macro" } -- preprocessor #include
G.Define = { link = "Macro" } -- preprocessor #define
G.PreCondit = { link = "Macro" } -- preprocessor #if, #else, #endif, etc.
G.Comment = { fg = C.comment, italic = true } -- any comment
G.Type = { fg = C.yellow1 } -- (preferred) int, long, char, etc.
G.StorageClass = { link = "Keyword" } -- static, register, volatile, etc.
G.Structure = { link = "Type" } -- struct, union, enum, etc.
G.Typedef = { link = "Type" } -- A typedef
G.Special = { fg = C.blue1 } -- any special symbol
-- SpecialChar   = { } --  special character in a constant
-- Tag           = { } --    you can use CTRL-] on this
G.Delimiter = { fg = C.gray5, italic = true } -- character that needs attention
-- SpecialComment= { } -- special things inside a comment
-- Debug         = { } --    debugging statements
G.Underlined = { underline = true } -- (preferred) text that stands out, HTML links
G.Bold = { bold = true }
G.Italic = { italic = true }
G.Ignore = { fg = C.gray2 } -- left blank, hidden
G.Error = { fg = C.error } -- (preferred) any erroneous construct
G.Todo = { fg = C.orange0, bg = C.black0 } -- (preferred) anything that needs extra attention
G.Note = { fg = C.black0, bg = C.info }
G.ColorColumn = { bg = C.bg_visual } -- used for the columns set with 'colorcolumn'
G.Conceal = { fg = C.gray3 } -- placeholder characters substituted for concealed text (see 'conceallevel')
G.Cursor = { fg = C.black0, bg = C.fg } -- character under the cursor
G.lCursor = { fg = C.black0 } -- the character under the cursor when |language-mapping| is used (see 'guicursor')
G.CursorIM = { fg = C.black0 } -- like Cursor, but used when in IME mode |CursorIM|
G.CursorColumn = { bg = C.bg_visual } -- Screen-column at the cursor, when 'cursorcolumn' is set.
G.CursorLine = { bg = C.bg_visual } -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
G.CursorLineNr = { fg = C.gray5 } -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
G.CursorLineSign = {}
G.Directory = { fg = C.blue1 } -- directory names (and other special names in listings)
G.EndOfBuffer = { fg = C.fg_sidebar } -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
-- TermCursor  = { } -- cursor in a focused terminal
-- TermCursorNC= { } -- cursor in an unfocused terminal
G.ErrorMsg = { fg = C.error } -- error messages on the command line
G.VertSplit = { fg = C.border } -- the column separating vertically split windows
G.WinSeparator = { fg = C.border_fg, bg = C.border_bg } -- the column separating vertically split windows
G.Folded = { fg = C.fg_fold, bg = C.bg_fold } -- line used for closed folds
G.FoldColumn = { bg = C.bg_fold, fg = C.fg_fold } -- 'foldcolumn'
G.SignColumn = { bg = C.bg_sidebar, fg = C.fg_sidebar } -- column where |signs| are displayed
G.SignColumnSB = { bg = C.bg_sidebar, fg = C.fg_sidebar } -- column where |signs| are displayed
G.Substitute = { bg = C.red1, fg = C.bg_dark } -- |:substitute| replacement text highlighting
G.LineNr = { fg = C.fg_sidebar } -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
G.MatchParen = { underline = true, bold = true, sp = C.white1 } -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
G.ModeMsg = { fg = C.fg, bold = true } -- 'showmode' message (e.g., "-- INSERT -- ")
G.MsgArea = { fg = C.fg } -- Area for messages and cmdline
-- MsgSeparator= { } -- Separator for scrolled messages, `msgsep` flag of 'display'
G.MoreMsg = { fg = C.blue1 } -- |more-prompt|
G.NonText = { fg = C.gray4 } -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
G.Normal = { fg = C.fg, bg = C.bg } -- normal text
G.NormalNC = { fg = C.fg, bg = C.bg } -- normal text in non-current windows
G.NormalSB = { fg = C.fg_sidebar, bg = C.bg_sidebar } -- normal text in sidebar
G.NormalFloat = { fg = C.float_fg, bg = C.float_bg } -- Normal text in floating windows.
G.FloatBorder = { fg = C.float_border_fg, bg = C.float_border_bg }
G.FloatTitle = { fg = C.yellow1 }
G.Pmenu = { bg = C.bg_popup } -- Popup menu: normal item.
G.PmenuSel = { bg = C.bg_selected } -- Popup menu: selected item.
G.PmenuSbar = { bg = C.gray2 } -- Popup menu: scrollbar.
G.PmenuThumb = { bg = C.gray2, fg = C.gray2 } -- Popup menu: Thumb of the scrollbar.
G.Question = { fg = C.info } -- |hit-enter| prompt and yes/no questions
G.QuickFixLine = { bg = C.bg_visual, bold = true } -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
G.Search = { bg = C.bg_visual, fg = C.yellow2, bold = true, underline = true } -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
G.IncSearch = { bg = C.yellow1, fg = C.bg_visual, bold = true } -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
G.CurSearch = { link = 'IncSearch' }
G.SpecialKey = { fg = C.gray5 } -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
G.SpellBad = { sp = C.error, undercurl = true } -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
G.SpellCap = { sp = C.warning, undercurl = true } -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
G.SpellLocal = { sp = C.info, undercurl = true } -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
G.SpellRare = { sp = C.hint, undercurl = true } -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
G.StatusLine = { fg = C.fg_sidebar, bg = C.bg_statusline } -- status line of current window
G.StatusLineNC = { fg = C.gray4, bg = C.bg_statusline } -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
G.TabLine = { bg = C.bg_statusline, fg = C.fg } -- tab pages line, not active tab page label
G.TabLineFill = { bg = C.black0, fg = C.none } -- tab pages line, where there are no labels
G.TabLineSel = { fg = C.fg_bright, bg = C.bg } -- tab pages line, active tab page label
G.Title = { fg = C.fg_bright, bold = true } -- titles for output from ":set all", ":autocmd" etc.
G.Visual = { bg = C.bg_visual } -- Visual mode selection
G.VisualNOS = { bg = C.bg_visual } -- Visual mode selection when vim is "Not Owning the Selection".
G.WarningMsg = { fg = C.warning } -- warning messages
G.Whitespace = { fg = C.gray4 } -- "nbsp", "space", "tab" and "trail" in 'listchars'
G.WildMenu = { bg = C.bg_visual } -- current match in 'wildmenu' completion
G.WinBar = { bg = C.bg_dark, fg = C.gray5 }
G.WinBarNC = { bg = C.bg_dark, fg = C.gray4 }

-- LSP
G.DiagnosticError = { fg = C.error } -- Used as the base highlight group. Other Diagnostic highlights link to this by default
G.DiagnosticWarn = { fg = C.warning } -- Used as the base highlight group. Other Diagnostic highlights link to this by default
G.DiagnosticInfo = { fg = C.info } -- Used as the base highlight group. Other Diagnostic highlights link to this by default
G.DiagnosticHint = { fg = C.hint } -- Used as the base highlight group. Other Diagnostic highlights link to this by default
G.DiagnosticVirtualTextError = { fg = C.error, bg = C.gray1, bold = true } -- Used for "Error" diagnostic virtual text
G.DiagnosticVirtualTextWarn = { fg = C.warning, bg = C.gray1 } -- Used for "Warning" diagnostic virtual text
G.DiagnosticVirtualTextWarning = { fg = C.warning, bg = C.gray1 } -- Used for "Warning" diagnostic virtual text
G.DiagnosticVirtualTextInfo = { fg = C.info, bg = C.gray1 } -- Used for "Information" diagnostic virtual text
G.DiagnosticVirtualTextHint = { fg = C.hint, bg = C.gray1 } -- Used for "Hint" diagnostic virtual text
G.DiagnosticText = { bg = C.float_bg }
G.LspSignatureActiveParameter = { bg = C.gray3, bold = true }
G.LspCodeLens = { fg = C.comment }
G.LspInfoBorder = { link = "FloatBorder" }
G.ALEErrorSign = { fg = C.error }
G.ALEWarningSign = { fg = C.warning }

-- Treesitter
G['@comment'] = { link = 'Comment' }
--G['@comment.documentation'] = { link = 'Comment' }
G['@comment.documentation'] = { link = 'Comment' }
G['@comment.note'] = { fg = C.hint }
G['@comment.error'] = { fg = C.error }
G['@comment.hint'] = { fg = C.hint }
G['@comment.info'] = { fg = C.info }
G['@comment.warning'] = { fg = C.warning }
G['@comment.todo'] = { fg = C.todo }
G['@operator'] = { fg = C.fg } -- For any operator: `+`, but also `->` and `*` in C.
--- Punctuation
G['@punctuation.delimiter'] = { link = 'Delimiter' } -- For delimiters ie: `.`
G['@punctuation.bracket'] = { link = '@operator' } -- For brackets and parens.
G['@punctuation.special'] = { link = 'Macro' } -- For special punctuation that does not fall in the categories before.
G['@punctuation.special.markdown'] = { fg = C.orange1, bold = true }
--- Literals
G['@string'] = { link = 'String' }
G['@string.documentation'] = { link = 'String' }
G['@string.escape'] = { fg = C.magenta2 } -- For escape characters within a string.
G['@string.regex'] = { fg = C.magenta2 } -- For regexes.
--- Functions
G['@constructor'] = { link = 'Function' } -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
G['@parameter'] = { fg = C.fg, italic = true } -- For parameters of a function.
G['@parameter.builtin'] = { link = 'Builtin' } -- For builtin parameters of a function, e.g. "..." or Smali's pG[1-99]
--- Keywords
G['@keyword'] = { link = 'Keyword' } -- For keywords that don't fall in previous categories.
G['@keyword.conditional'] = { link = 'Conditional' }
G['@keyword.coroutine'] = { link = 'Macro' } -- For keywords related to coroutines.
G['@keyword.debug'] = { link = 'Debug' }
G['@keyword.directive'] = { link = 'PreProc' }
G['@keyword.directive.define'] = { link = 'Define' }
G['@keyword.exception'] = { link = 'Exception' }
G['@keyword.export'] = { link = 'Keyword' }
G['@keyword.function'] = { link = 'Keyword' } -- For keywords used to define a function.
G['@keyword.import'] = { link = 'Include' }
G['@keyword.operator'] = { link = 'Keyword' }
G['@keyword.repeat'] = { link = 'Repeat' }
G['@keyword.return'] = { link = 'Keyword' }
G['@keyword.storage'] = { link = 'StorageClass' }
G['@label'] = { link = 'Keyword' } -- For labels: `label:` in C and `:label:` in Lua.
--- Types
G['@type.builtin'] = { link = 'Type' }
G['@field'] = { link = 'Field' } -- For fields.
G['@property'] = { link = 'Field' }
--- Identifiers
G['@variable'] = { link = 'Variable' } -- Any variable name that does not have another highlight.
G['@variable.builtin'] = { link = 'Builtin' } -- Variable names that are defined by the languages, like `this` or `self`.
G['@variable.member'] = { link = 'Field' }
--- Text
-- G['@spell'] = { link = 'Comment' } -- This seems to interfere with regular text
-- G["@text.literal.markdown"] = { }
G['@text'] = { link = 'Normal' } -- For strings considered text in a markup language.
G['@text.strong'] = { bold = true }
G['@text.emphasis'] = { italic = true } -- For text to be represented with emphasis.
G['@text.underline'] = { underline = true } -- For text to be represented with an underline.
G['@text.strike'] = { strikethrough = true } -- For strikethrough text.
G['@text.title'] = { link = 'Title' } -- Text that is part of a title.
G['@text.uri'] = { underline = true } -- Any URI like a link or email.
G['@text.literal'] = { link = 'String' }
G['@text.literal.markdown_inline'] = { bg = C.black2, fg = C.fg }
G['@text.reference'] = { link = 'Link' }
G['@text.todo.unchecked'] = { fg = C.blue1 } -- For brackets and parens.
G['@text.todo.checked'] = { fg = C.green2 } -- For brackets and parens.
G['@text.warning'] = { fg = C.warning }
G['@text.danger'] = { fg = C.error }
G['@text.diff.add'] = { link = 'DiffAdd' }
G['@text.diff.delete'] = { link = 'DiffDelete' }
G['@text.todo'] = { link = 'Todo' }
G['@text.note'] = { link = 'Note' }
--- Markup
G['@markup'] = { link = '@none' }
G['@markup.emphasis'] = { italic = true }
G['@markup.environment'] = { link = 'Macro' }
G['@markup.environment.name'] = { link = 'Type' }
G['@markup.heading'] = { link = 'Title' }
G['@markup.heading.1'] = { fg = C.yellow1, bold = true }
G['@markup.heading.2'] = { fg = C.orange1, bold = true }
G['@markup.heading.3'] = { fg = C.magenta1, bold = true }
G['@markup.heading.4'] = { fg = C.green1 }
G['@markup.heading.5'] = { fg = C.blue2, italic = true }
G['@markup.heading.6'] = { fg = C.cyan1, italic = true }
G['@markup.italic'] = { italic = true }
G['@markup.list'] = { link = '@operator' }
G['@markup.list.checked'] = { link = 'Field' }
G['@markup.list.markdown'] = { fg = C.yellow1, bold = true }
G['@markup.list.unchecked'] = { fg = C.fg }
G['@markup.link'] = { fg = C.cyan1 }
G['@markup.link.label'] = { link = 'SpecialChar' }
G['@markup.link.label.symbol'] = { link = 'Identifier' }
G['@markup.link.url'] = { link = 'Underlined' }
G['@markup.math'] = { link = 'Special' }
G['@markup.raw'] = { link = 'String' }
G['@markup.raw.markdown_inline'] = { bg = C.black2, fg = C.fg }
G['@markup.strong'] = { bold = true }
G['@markup.strikethrough'] = { strikethrough = true }
G['@markup.underline'] = { underline = true }
-- TSX
G['@tag.tsx'] = { fg = C.blue1 }
G['@constructor.tsx'] = { fg = C.blue1 }
G['@tag.delimiter.tsx'] = { fg = C.blue1 }
--LSP Semantic Token Groups
G['@lsp.type.boolean'] = { link = 'Boolean' }
G['@lsp.type.builtinType'] = { link = 'Type' }
G['@lsp.type.comment'] = { link = 'Comment' }
G['@lsp.type.enum'] = { link = 'Type' }
G['@lsp.type.enumMember'] = { link = 'Field' }
G['@lsp.type.escapeSequence'] = { link = '@string.escape' }
G['@lsp.type.formatSpecifier'] = { link = '@punctuation.special' }
G['@lsp.type.interface'] = { link = 'Keyword' }
G['@lsp.type.keyword'] = { link = 'Keyword' }
G['@lsp.type.namespace'] = { link = 'Namespace' }
G['@lsp.type.number'] = { link = 'Number' }
G['@lsp.type.operator'] = { link = '@operator' }
G['@lsp.type.parameter'] = { link = '@parameter' }
G['@lsp.type.property'] = { link = '@property' }
G['@lsp.type.selfKeyword'] = { link = 'Builtin' }
G['@lsp.type.string.rust'] = { link = 'String' }
G['@lsp.type.typeAlias'] = { link = 'Type' }
G['@lsp.type.unresolvedReference'] = { undercurl = true, sp = C.error }
G['@lsp.type.variable'] = {} -- use treesitter styles for regular variables
G['@lsp.typemod.class.defaultLibrary'] = { link = 'Type' }
G['@lsp.typemod.enum.defaultLibrary'] = { link = 'Type' }
G['@lsp.typemod.enumMember.defaultLibrary'] = { link = 'Constant' }
G['@lsp.typemod.function.defaultLibrary'] = { link = 'Function' }
G['@lsp.typemod.keyword.async'] = { link = 'Macro' }
G['@lsp.typemod.macro.defaultLibrary'] = { link = 'Macro' }
G['@lsp.typemod.method.defaultLibrary'] = { link = 'Function' }
G['@lsp.typemod.operator.injected'] = { link = 'Operator' }
G['@lsp.typemod.string.injected'] = { link = 'String' }
G['@lsp.typemod.type.defaultLibrary'] = { link = 'Type' }
G['@lsp.typemod.variable.defaultLibrary'] = { link = 'Variable' }
G['@lsp.typemod.variable.injected'] = { link = 'Variable' }
G['@lsp.typemod.variable.globalScope'] = { link = 'Macro' }
-- Things that seems to be missing?
G['@annotation'] = { link = 'PreProc' }
G['@diff.plus'] = { link = 'DiffAdd' }
G['@diff.minus'] = { link = 'DiffDelete' }
G['@diff.delta'] = { link = 'DiffChange' }
G['@character'] = { link = 'Character' }
G['@character.special'] = { link = 'SpecialChar' }
G['@string.special'] = { fg = C.yellow1 } -- For escape characters within a string.
G['@tag'] = { fg = C.blue1 } -- Tags like html tag names.
G['@tag.delimiter'] = { fg = C.fg } -- Tag delimiter like `<` `>` `/`
G['@tag.attribute'] = { fg = C.yellow1 } -- Tag attribute like `id` `class`
G['@constant'] = { link = 'Constant' }
G['@number'] = { link = 'Constant' }
G['@float'] = { link = 'Constant' }
G['@boolean'] = { link = 'Constant' }
G['@constant.macro'] = { link = 'Constant' }
G['@constant.builtin'] = { link = 'Constant' }
G['@repeat'] = { link = 'Keyword' }
G['@conditional'] = { link = 'Keyword' }
G['@class'] = { link = 'Keyword' }
G['@include'] = { link = 'Include' }
G['@macro'] = { link = 'Macro' }
G['@module'] = { fg = C.yellow1 }
G['@module.builtin'] = { link = 'Builtin' }
G['@preproc'] = { link = 'Macro' }
G['@attribute'] = { link = 'Macro' }
G['@function.macro'] = { link = 'Macro' }
G['@define'] = { link = 'Macro' }
G['@exception'] = { link = 'Macro' }
G['@function'] = { link = 'Function' }
G['@method'] = { link = 'Function' }
G['@method.call'] = { link = 'Function' }
G['@function.call'] = { link = 'Function' }
G['@function.builtin'] = { link = 'Function' }
G['@property.cpp'] = { fg = C.cyan1 }
G['@namespace'] = { fg = C.yellow0 }
G['@type'] = { link = 'Type' }
G['@type.definition'] = { link = 'Type' }
G['@type.qualifier'] = { link = 'Keyword' }
G['@storageclass'] = { link = 'Keyword' }
G['@none'] = { link = 'None' }

-- Telescope
G.TelescopeNormal = { bg = C.float_bg }
G.TelescopePromptNormal = { bg = C.black2 }
G.TelescopeResultsNormal = { bg = C.float_bg }
G.TelescopePreviewNormal = { bg = C.float_bg }
G.TelescopeSelection = { bg = C.float_bg, fg = C.yellow2 }
G.TelescopeSelectionCaret = { fg = C.yellow2, bg = C.float_bg, bold = true }
G.TelescopePreviewTitle = { bg = C.blue2, fg = C.black0, bold = true }
G.TelescopeResultsTitle = { bg = C.orange1, fg = C.black0, bold = true }
G.TelescopePromptTitle = { bg = C.orange1, fg = C.black0, bold = true }
G.TelescopeTitle = { bg = C.orange1, fg = C.black0, bold = true }
G.TelescopeBorder = { fg = C.black0, bg = C.black0 }
G.TelescopePromptBorder = { bg = C.black2, fg = C.black0 }
G.TelescopeResultsBorder = { bg = C.float_bg, fg = C.black0 }
G.TelescopePreviewBorder = { bg = C.float_bg, fg = C.black0 }
G.TelescopeMultiIcon = { fg = C.yellow2, bg = C.float_bg, bold = true }
G.TelescopeMultiSelection = { bg = C.float_bg }
G.TelescopePromptPrefix = { bg = C.black2, fg = C.orange2 }
G.TelescopePreviewLine = { bg = C.gray1 }


local M = {}

M.colors = C

function M.setup(opts)
    -- Nothing to do here
end

function M.load(opts)
    vim.api.nvim_command("hi clear")
    vim.o.termguicolors = true
    vim.g.colors_name = "revontulet"

    if opts then M.setup(opts) end

    for group, config in pairs(G) do
        vim.api.nvim_set_hl(0, group, config)
    end
end

return M
