local lush = require'lush'
local hsl = lush.hsl

-- Vim itself
local vim_foreground = hsl("#DDDDDD")
local vim_background = hsl("#282A36")

local error_foreground = hsl("#F44747")

-- Syntax
local std_comment  = hsl("#8D8DA8")  -- Try presing C-a and C-x
local std_variable = hsl("#9CDCFE")
local std_string = hsl("#CE9178") 
local std_number = hsl("#B5CEA8") 
local std_boolean = hsl("#569CD6") 
local std_identifier = hsl("#4FC1FF") 
local std_function = hsl("#DCDCAA") 
local std_statement = hsl("#C586C0") 
local std_keyword = hsl("#569CD6") 
local std_type = hsl("#4EC9B0") 

-- TreeSitter

-- VertSplit
local gui_foreground = hsl("#ABB2BF")
local gui_secondary = hsl("#5F5F7D")

local visual_background = hsl("#5C6370")

local theme = lush(function()
  return {
    -- INTERFACE --
    Comment      { fg = std_comment }, -- any comment
    -- ColorColumn  { }, -- used for the columns set with 'colorcolumn'
    -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { fg = vim_background, bg = vim_foreground }, -- character under the cursor
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine   { }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory    { }, -- directory names (and other special names in listings)
    -- DiffAdd      { }, -- diff mode: Added line |diff.txt|
    -- DiffChange   { }, -- diff mode: Changed line |diff.txt|
    -- DiffDelete   { }, -- diff mode: Deleted line |diff.txt|
    -- DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    -- ErrorMsg     { }, -- error messages on the command line
    VertSplit    { fg = gui_secondary, bg = vim_background }, -- the column separating vertically split windows
    -- Folded       { }, -- line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    SignColumn   { fg = gui_foreground, bg = vim_background }, -- column where |signs| are displayed
    -- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    LineNr       { fg = gui_secondary }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = gui_foreground, bg = vim_background }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- MatchParen   { }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    -- NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = vim_foreground }, -- normal text
    -- NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    -- Pmenu        { }, -- Popup menu: normal item.
    -- PmenuSel     { }, -- Popup menu: selected item.
    -- PmenuSbar    { }, -- Popup menu: scrollbar.
    -- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search       { }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { fg = gui_foreground, bg = vim_background }, -- status line of current window
    StatusLineNC { fg = gui_foreground, bg = vim_background }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine      { }, -- tab pages line, not active tab page label
    -- TabLineFill  { }, -- tab pages line, where there are no labels
    -- TabLineSel   { }, -- tab pages line, active tab page label
    -- Title        { }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = visual_background }, -- Visual mode selection
    VisualNOS    { bg = visual_background }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg   { }, -- warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu     { }, -- current match in 'wildmenu' completion

    -- DEFAULT PARSING SYNTAX --
    Constant       { fg = std_variable }, -- (preferred) any constant
    String         { fg = std_string }, --   a string constant: "this is a string"
    Character      { fg = std_string }, --  a character constant: 'c', '\n'
    Number         { fg = std_number }, --   a number constant: 234, 0xff
    Boolean        { fg = std_boolean }, --  a boolean constant: TRUE, false
    Float          { fg = std_number }, --    a floating point constant: 2.3e10

    Identifier     { fg = std_identifier }, -- (preferred) any variable name
    Function       { fg = std_function }, -- function name (also: methods for classes)

    Statement      { fg = std_statement }, -- (preferred) any statement
    -- Conditional    { fg = std_statement }, --  if, then, else, endif, switch, etc.
    -- Repeat         { fg = std_statement }, --   for, do, while, etc.
    -- Label          { fg = std_statement }, --    case, default, etc.
    -- Operator       { fg = std_statement }, -- "sizeof", "+", "*", etc.
    -- Keyword        { fg = std_statement }, --  any other keyword
    -- Exception      { fg = std_statement }, --  try, catch, throw

    PreProc        { fg = std_statement }, -- (preferred) generic Preprocessor
    -- Include        { fg = std_statement }, --  preprocessor #include
    -- Define         { fg = std_statement }, --   preprocessor #define
    -- Macro          { fg = std_statement }, --    same as Define
    -- PreCondit      { fg = std_statement }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = std_type }, -- (preferred) int, long, char, etc.
    StorageClass   { fg = std_keyword }, -- static, register, volatile, etc.
    Structure      { fg = std_keyword }, --  struct, union, enum, etc.
    Typedef        { fg = std_keyword }, --  A typedef

    Special        { fg = std_keyword }, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    -- Error          { }, -- (preferred) any erroneous construct

    Todo           { fg = vim_foreground, bg = gui_secondary }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    -- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- TREESITTER --
    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    TSAttribute          { fg = std_variable };
    TSBoolean            { fg = std_boolean };
    TSCharacter          { fg = std_string };
    TSComment            { fg = std_comment };
    TSConstructor        { fg = std_type };
    TSConditional        { fg = std_boolean };
    TSConstant           { fg = std_variable };
    TSConstBuiltin       { fg = std_keyword };
    TSConstMacro         { fg = std_statement };
    TSError              { fg = error_foreground };
    TSException          { fg = std_statement };
    TSField              { fg = std_variable };
    TSFloat              { fg = std_number };
    TSFunction           { fg = std_function };
    TSFuncBuiltin        { fg = std_function };
    TSFuncMacro          { fg = std_function };
    TSInclude            { fg = std_statement };
    TSKeyword            { };
    TSKeywordFunction    { fg = std_keyword };
    TSLabel              { fg = std_statement };
    TSMethod             { fg = std_function };
    TSNamespace          { fg = std_variable };
    -- TSNone               { };
    TSNumber             { fg = std_number };
    TSOperator           { fg = std_statement };
    TSParameter          { fg = std_variable };
    TSParameterReference { fg = std_variable };
    TSProperty           { fg = std_variable };
    -- TSPunctDelimiter     { };
    -- TSPunctBracket       { };
    -- TSPunctSpecial       { };
    -- TSRepeat             { };
    -- TSString             { };
    -- TSStringRegex        { };
    -- TSStringEscape       { };
    -- TSSymbol             { };
    -- TSType               { };
    -- TSTypeBuiltin        { };
    -- TSVariable           { };
    -- TSVariableBuiltin    { };

    -- TSTag                { };
    -- TSTagDelimiter       { };
    -- TSText               { };
    -- TSEmphasis           { };
    -- TSUnderline          { };
    -- TSStrike             { };
    -- TSTitle              { };
    -- TSLiteral            { };
    -- TSURI                { };
  }
end)

return theme
