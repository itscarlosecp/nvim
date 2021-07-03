local lush = require'lush'
local hsl = lush.hsl

-- VIM INTERFACE 
local vim_foreground = hsl("#EAEAEA")
local vim_background = hsl("#282A36")

-- SYNTAX
local std_comment  = hsl("#8D8DA8")
local std_variable = hsl("#9CDCFE")
local std_string = hsl("#CE9178")
local std_number = hsl("#B5CEA8")
local std_boolean = hsl("#569CD6")
local std_identifier = hsl("#4FC1FF")
local std_function = hsl("#DCDCAA")
local std_statement = hsl("#C586C0")
local std_keyword = hsl("#569CD6")
local std_type = hsl("#4EC9B0")

-- TREESITTER
local ts_string_scape = hsl("#D7BA7D")

local error = hsl("#F44747")
local gui_hidden = hsl("#5F5F7D")

local theme = lush(function()
  return {
    -- INTERFACE --
    Comment      { fg = std_comment }; -- Comments
    ColorColumn  { bg = vim_background }; -- Show textwidth limit :set colorcolumn=80
    -- Conceal      { }; 
    -- Cursor       { }
    -- lCursor      { };
    -- CursorIM     { };
    CursorColumn { bg = vim_background }; -- Highlight current cursor column :set cursorcolumn
    CursorLine   { bg = vim_background }; -- Highlight current cursor line :set cursorline
    -- Directory    { }; -- File explorer directories
    -- DiffAdd      { };
    -- DiffChange   { };
    -- DiffDelete   { };
    -- DiffText     { };
    EndOfBuffer  { fg = gui_hidden }; -- Empty lines
    -- TermCursor   { };
    -- TermCursorNC { };
    ErrorMsg     { fg = vim_foreground, bg = error }; -- Error messages when command fails
    VertSplit    { fg = gui_hidden, bg = vim_background }; -- Vertical split separators :vsplit
    -- Folded       { };
    -- FoldColumn   { };
    SignColumn   { fg = gui_hidden, bg = vim_background }; -- Left errors column
    -- IncSearch    { };
    Substitute   { fg = vim_background, bg = vim_foreground }; -- Substitute command highlight :s/
    LineNr       { fg = gui_hidden }; -- Not current line numbers
    CursorLineNr { fg = vim_foreground, bg = vim_background }; -- Current line number
    -- MatchParen   { };
    -- ModeMsg      { };
    -- MsgArea      { };
    -- MsgSeparator { };
    -- MoreMsg      { };
    -- NonText      { };
    Normal       { fg = vim_foreground, bg = "NONE"}; -- Vim foreground and background
    -- NormalFloat  { };
    -- NormalNC     { };
    -- Pmenu        { };
    -- PmenuSel     { };
    -- PmenuSbar    { };
    -- PmenuThumb   { };
    -- Question     { };
    -- QuickFixLine { };
    Search       { fg = vim_foreground, bg = gui_hidden }; -- Search highlight /
    -- SpecialKey   { };
    -- SpellBad     { };
    -- SpellCap     { };
    -- SpellLocal   { };
    -- SpellRare    { };
    StatusLine   { fg = gui_hidden, bg = vim_background }; -- Active buffer statusline
    StatusLineNC { fg = gui_hidden, bg = vim_background }; -- Inactive buffers statusline
    -- TabLine      { };
    -- TabLineFill  { };
    -- TabLineSel   { };
    -- Title        { };
    -- Visual       { bg = visual_background };
    -- VisualNOS    { bg = visual_background };
    WarningMsg   { fg = error }; -- Warning messages
    -- Whitespace   { };
    -- WildMenu     { };

    -- DEFAULT PARSING SYNTAX --
    Constant       { fg = std_variable };
    String         { fg = std_string };
    Character      { fg = std_string };
    Number         { fg = std_number };
    Boolean        { fg = std_boolean };
    Float          { fg = std_number };

    Identifier     { fg = std_identifier };
    Function       { fg = std_function };

    Statement      { fg = std_statement };
    -- Conditional    { };
    -- Repeat         { };
    -- Label          { };
    -- Operator       { };
    -- Keyword        { };
    -- Exception      { };

    PreProc        { fg = std_statement };
    -- Include        { };
    -- Define         { };
    -- Macro          { };
    -- PreCondit      { };

    Type           { fg = std_type };
    StorageClass   { fg = std_keyword };
    Structure      { fg = std_keyword };
    Typedef        { fg = std_keyword };

    Special        { fg = std_keyword };
    -- SpecialChar    { };
    -- Tag            { };
    -- Delimiter      { };
    -- SpecialComment { };
    -- Debug          { };

    Underlined { gui = "underline" };
    Bold       { gui = "bold" };
    Italic     { gui = "italic" };

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { };

    -- Error          { };

    -- Todo           { fg = vim_foreground, bg = gui_secondary };

    -- NATIVE LSP --
    -- LspReferenceText                     { };
    -- LspReferenceRead                     { };
    -- LspReferenceWrite                    { };

    LspDiagnosticsDefaultError           { fg = error };
    -- LspDiagnosticsDefaultWarning         { fg = error };
    -- LspDiagnosticsDefaultInformation     { };
    -- LspDiagnosticsDefaultHint            { };

    -- LspDiagnosticsVirtualTextError       { };
    -- LspDiagnosticsVirtualTextWarning     { };
    -- LspDiagnosticsVirtualTextInformation { };
    -- LspDiagnosticsVirtualTextHint        { };

    -- LspDiagnosticsUnderlineError         { };
    -- LspDiagnosticsUnderlineWarning       { };
    -- LspDiagnosticsUnderlineInformation   { };
    -- LspDiagnosticsUnderlineHint          { };

    -- LspDiagnosticsFloatingError          { };
    -- LspDiagnosticsFloatingWarning        { };
    -- LspDiagnosticsFloatingInformation    { };
    -- LspDiagnosticsFloatingHint           { };

    -- LspDiagnosticsSignError              { };
    -- LspDiagnosticsSignWarning            { };
    -- LspDiagnosticsSignInformation        { };
    -- LspDiagnosticsSignHint               { };

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
    TSError              { fg = error };
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
    TSPunctDelimiter     { fg = vim_foreground };
    TSPunctBracket       { fg = vim_foreground };
    TSPunctSpecial       { fg = vim_foreground };
    TSRepeat             { fg = std_statement};
    TSString             { fg = std_string };
    TSStringRegex        { fg = std_string };
    TSStringEscape       { fg = ts_string_scape };
    -- TSSymbol             { };
    TSType               { fg = std_type };
    TSTypeBuiltin        { fg = std_type };
    TSVariable           { fg = std_variable };
    TSVariableBuiltin    { fg = std_keyword };

    -- TSTag                { };
    -- TSTagDelimiter       { };
    -- TSText               { };
    -- TSEmphasis           { };
    -- TSUnderline          { };
    -- TSStrike             { };
    -- TSTitle              { };
    -- TSLiteral            { };
    TSURI                { gui = "underline" };
  }
end)

return theme
