local lush = require "lush"
local hsl = lush.hsl

-- COLORS DEFINITIONS
-- GLOBAL
local transparent_bg = true
local vim_fg = hsl("#EAEAEA")
local vim_bg = hsl("#282A36")
local vim_accent = hsl("#5FAFD7")
local vim_secondary = hsl("#8D8DA8")
local vim_hidden = hsl("#5F5F7D")
local vim_error = hsl("#F44747")

-- VISUAL/SELECTION/SEARCH
local visual = vim_hidden.darken(10)

-- PMENU SUGESTIONS PUM/DROPDOWN
local menu_fg = vim_fg
local menu_bg = vim_bg
local menu_selection = vim_accent
local menu_scrollbar_fg = menu_fg
local menu_scrollbar_bg = menu_bg.lighten(10)

-- VIM TABLINE
local tab_active_fg = vim_bg
local tab_active_bg = vim_accent
local tab_inactive_fg = vim_secondary
local tab_inactive_bg = vim_bg.lighten(5)

-- VIM STATUSLINE
local statusline_fg = vim_fg
local statusline_bg = vim_bg

-- VIM TODOS
local todo_fg = vim_bg
local todo_bg = hsl("#B5CEA8")

-- NVIMTREE
local nvimtree_indent_marker = vim_hidden
local nvimtree_directory = vim_accent
local nvimtree_window_picker_fg = vim_bg
local nvimtree_window_picker_bg = vim_accent

local nvimtree_dirty = hsl("#EE8147")
local nvimtree_deleted = vim_error

-- SYNTAX
local vim_comment = hsl("#8D8DA8")
local vim_variable = hsl("#9CDCFE")
local vim_string = hsl("#CE9178")
local vim_number = hsl("#B5CEA8")
local vim_boolean = hsl("#569CD6")
local vim_identifier = hsl("#4FC1FF")
local vim_function = hsl("#DCDCAA")
local vim_statement = hsl("#C586C0")
local vim_keyword = hsl("#569CD6")
local vim_type = hsl("#4EC9B0")

-- TREESITTER
local ts_string_scape = hsl("#D7BA7D")

local theme =
  lush(
  function()
    return {
      -- INTERFACE --
      Comment {fg = vim_comment}, -- Comments
      ColorColumn {bg = vim_bg}, -- Show textwidth limit :set colorcolumn=80
      -- Conceal      { },
      -- Cursor       { },
      -- lCursor      { },
      -- CursorIM     { },
      CursorColumn {fg = vim_hidden, bg = vim_bg}, -- Highlight current cursor column :set cursorcolumn
      CursorLine {fg = vim_hidden, bg = vim_bg}, -- Highlight current cursor line :set cursorline
      Directory {fg = nvimtree_directory}, -- File explorer directories
      -- DiffAdd      { },
      -- DiffChange   { },
      -- DiffDelete   { },
      -- DiffText     { },
      EndOfBuffer {fg = vim_hidden}, -- Empty lines
      -- TermCursor   { },
      -- TermCursorNC { },
      ErrorMsg {fg = vim_fg, bg = vim_error}, -- Error messages when command fails
      VertSplit {fg = vim_hidden, bg = vim_bg}, -- Vertical split separators :vsplit
      -- Folded       { },
      -- FoldColumn   { },
      SignColumn {fg = vim_hidden, bg = vim_bg}, -- Left errors column
      IncSearch {bg = visual}, -- Incremental search highlight :s///
      Substitute {bg = visual}, -- Substitute command highlight :s/
      LineNr {fg = vim_hidden}, -- Not current line numbers
      CursorLineNr {fg = vim_fg, bg = vim_bg}, -- Current line number
      -- MatchParen   { }, -- Matching pairs color
      -- ModeMsg      { }, -- Show mode message -- INSERT --, -- NORMAL --
      -- MsgArea      { }, -- Area for messages in command bar. Below the statusline
      -- MsgSeparator { }, -- Links to StatusLine
      MoreMsg {fg = vim_secondary}, -- More -- sign when in scrollable buffer. :highlight (see the bottom -- MORE --)
      NonText {fg = vim_hidden}, -- Characters that dont really exists (not selectable)
      Normal {fg = vim_fg, bg = (transparent_bg and "NONE" or vim_bg)}, -- Vim foreground and background
      pythonSpaceError {fg = "NONE", bg = "NONE"}, -- Python spacing errors
      Pmenu {fg = menu_fg, bg = menu_bg}, -- Pum/dropdown menu background
      PmenuSel {fg = menu_fg, bg = menu_selection}, -- Pum/dropdown menu selection
      PmenuSbar {fg = menu_scrollbar_fg, bg = menu_scrollbar_bg}, -- Pum/dropdown scrollbar container
      -- PmenuThumb   { }, -- Actual pum/dropdown scrollbar (inherits from PmenuSbar fg)
      -- NormalFloat  { }, -- Normal text in current floating windows. Links to Pmenu
      -- NormalNC     { }, -- Normal text in not current floating windows. Links to Pmenu
      -- Question     { }, -- Yes or No prompt
      -- QuickFixLine { }, -- Links to Search
      Search {bg = visual}, -- Search highlight /
      -- SpecialKey   { },
      -- SpellBad     { },
      -- SpellCap     { },
      -- SpellLocal   { },
      -- SpellRare    { },
      StatusLine {fg = statusline_fg, bg = statusline_bg}, -- Active buffer statusline
      StatusLineNC {fg = statusline_fg, bg = statusline_bg}, -- Inactive buffers statusline
      TabLine {fg = tab_active_fg, bg = tab_active_bg}, -- Tabline active tab
      TabLineFill {bg = vim_bg}, -- Tabline empty space (with no tabs)
      TabLineSel {fg = tab_inactive_fg, bg = tab_inactive_bg}, -- Tabline non-active tabs
      Title {fg = vim_accent}, -- Title for output from :set all, etc...
      Visual {bg = visual},
      -- VisualNOS    { }, -- Weird selection ownership case
      WarningMsg {fg = vim_error}, -- Warning messages
      -- Whitespace   { }, -- Whitespace rendering :set list
      -- WildMenu     { },

      -- DEFAULT SYNTAX --
      Constant {fg = vim_variable},
      String {fg = vim_string},
      Character {fg = vim_string},
      Number {fg = vim_number},
      Boolean {fg = vim_boolean},
      Float {fg = vim_number},
      Identifier {fg = vim_identifier},
      Function {fg = vim_function},
      -- GROUP LINKS
      Statement {fg = vim_statement},
      -- Conditional    { },
      -- Repeat         { },
      -- Label          { },
      -- Operator       { },
      -- Keyword        { },
      -- Exception      { },

      -- GROUP LINKS
      PreProc {fg = vim_statement},
      -- Include        { },
      -- Define         { },
      -- Macro          { },
      -- PreCondit      { },

      Type {fg = vim_type},
      StorageClass {fg = vim_keyword},
      Structure {fg = vim_keyword},
      Typedef {fg = vim_keyword},
      -- GROUP LINKS
      Special {fg = vim_keyword},
      -- SpecialChar    { },
      -- Tag            { },
      -- Delimiter      { },
      -- SpecialComment { },
      -- Debug          { },

      Underlined {gui = "underline"},
      Bold {gui = "bold"},
      Italic {gui = "italic"},
      Error {bg = vim_error},
      Todo {fg = todo_fg, bg = todo_bg},
      -- LSP DIAGNOSTICS --
      LspSagaDiagnosticBorder {fg = vim_secondary},
      LspSagaDiagnosticTruncateLine {fg = vim_secondary},
      -- TREESITTER --
      -- TSAnnotation         { },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
      TSAttribute {fg = vim_variable},
      TSBoolean {fg = vim_boolean},
      TSCharacter {fg = vim_string},
      TSComment {fg = vim_comment},
      TSConstructor {fg = vim_type},
      TSConditional {fg = vim_boolean},
      TSConstant {fg = vim_variable},
      TSConstBuiltin {fg = vim_keyword},
      TSConstMacro {fg = vim_statement},
      TSError {fg = vim_error},
      TSException {fg = vim_statement},
      TSField {fg = vim_variable},
      TSFloat {fg = vim_number},
      TSFunction {fg = vim_function},
      TSFuncBuiltin {fg = vim_function},
      TSFuncMacro {fg = vim_function},
      TSInclude {fg = vim_statement},
      -- TSKeyword            { },
      TSKeywordFunction {fg = vim_keyword},
      TSLabel {fg = vim_statement},
      TSMethod {fg = vim_function},
      TSNamespace {fg = vim_variable},
      TSNumber {fg = vim_number},
      TSOperator {fg = vim_statement},
      TSParameter {fg = vim_variable},
      TSParameterReference {fg = vim_variable},
      TSProperty {fg = vim_variable},
      TSPunctDelimiter {fg = vim_fg},
      TSPunctBracket {fg = vim_fg},
      TSPunctSpecial {fg = vim_fg},
      TSRepeat {fg = vim_statement},
      TSString {fg = vim_string},
      TSStringRegex {fg = vim_string},
      TSStringEscape {fg = ts_string_scape},
      TSType {fg = vim_type},
      TSTypeBuiltin {fg = vim_type},
      TSVariable {fg = vim_variable},
      TSVariableBuiltin {fg = vim_keyword},
      TSURI {gui = "underline"},
      -- NVIMTREE --
      NvimTreeIndentMarker {fg = nvimtree_indent_marker},
      NvimTreeFolderIcon {fg = nvimtree_directory},
      NvimTreeRootFolder {fg = vim_hidden},
      NvimTreeWindowPicker {fg = nvimtree_window_picker_fg, bg = nvimtree_window_picker_bg},
      NvimTreeFileDirty {fg = nvimtree_dirty},
      NvimTreeGitDirty {fg = nvimtree_dirty},
      NvimTreeFileDeleted {fg = nvimtree_deleted},
      NvimTreeGitDeleted {fg = nvimtree_deleted}
    }
  end
)

return theme
