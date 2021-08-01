--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

local lush = require('lush')
-- Support reloading when changing 'background'
package.loaded['lush_theme.hemisu_colors'] = nil
local c = require('lush_theme.hemisu_colors')

local theme = lush(function()
    return {
        -- The following are all the Neovim default highlight groups from the docs
        -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
        -- probably style all of these at a bare minimum.
        --
        -- Referenced/linked groups must come before being referenced/lined,
        -- so the order shown ((mostly) alphabetical) is likely
        -- not the order you will end up with.
        --
        -- You can uncomment these and leave them empty to disable any
        -- styling for that group (meaning they mostly get styled as Normal)
        -- or leave them commented to apply vims default colouring or linking.

        Comment({ fg = c.comment, gui = 'italic' }), -- any comment
        -- ColorColumn  { }, -- used for the columns set with 'colorcolumn'
        -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor({ fg = c.bg, bg = c.accent3 }), -- character under the cursor
        -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorLine({ bg = c.faint }), -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        CursorColumn({ CursorLine }), -- Screen-column at the cursor, when 'cursorcolumn' is set.
        Directory({ fg = c.accent1 }), -- directory names (and other special names in listings)
        Constant({ Directory }), -- (preferred) any constant
        Number({ Constant }), --   a number constant: 234, 0xff
        Special({ Constant }), -- (preferred) any special symbol
        PreProc({ Constant }), -- (preferred) generic Preprocessor
        DiffAdd({ bg = c.faintGreen, fg = c.norm }), -- diff mode: Added line |diff.txt|
        DiffChange({ bg = c.faintRed, fg = c.norm }), -- diff mode: Changed line |diff.txt|
        DiffDelete({ fg = c.normRed, bg = c.faintRed }), -- diff mode: Deleted line |diff.txt|
        DiffText({ bg = c.faintRed, fg = c.norm, gui = 'bold' }), -- diff mode: Changed text within a changed line |diff.txt|
        -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        TermCursor({}), -- cursor in a focused terminal
        -- TermCursorNC { }, -- cursor in an unfocused terminal
        ErrorMsg({ bg = c.faintRed }), -- error messages on the command line
        Error({ ErrorMsg }), -- (preferred) any erroneous construct
        WarningMsg({ ErrorMsg }), -- warning messages
        VertSplit({ fg = c.subtle, bg = c.faint }), -- the column separating vertically split windows
        Folded({ fg = c.comment, bg = c.faint }), -- line used for closed folds
        SignColumn({ fg = c.norm }), -- column where |signs| are displayed
        FoldColumn({ SignColumn }), -- 'foldcolumn'
        IncSearch({ bg = c.faintBlue }), -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        -- Substitute   { }, -- |:substitute| replacement text highlighting
        -- CursorLineNr { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen({ fg = c.accent1, bg = c.faint, gui = 'bold' }), -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        -- MsgArea      { }, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        NonText({ fg = c.subtle }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        LineNr({ NonText }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        SpecialKey({ NonText }), -- Unprintable character text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        Normal({ fg = c.norm, bg = c.bg }), -- normal text
        -- NormalFloat  { }, -- Normal text in floating windows.
        -- NormalNC     { }, -- normal text in non-current windows
        Pmenu({ bg = c.faint }), -- Popup menu: normal item.
        PmenuSel({ bg = c.faintBlue }), -- Popup menu: selected item.
        PmenuSbar({ bg = c.subtle }), -- Popup menu: scrollbar.
        PmenuThumb({ bg = c.norm }), -- Popup menu: Thumb of the scrollbar.
        -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search({ bg = c.faintGreen }), -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        SpellBad({ sp = c.normRed, gui = 'undercurl' }), -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap({ sp = c.accent1, gui = 'undercurl' }), -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal({ sp = c.accent4, gui = 'undercurl' }), -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare({ sp = c.normGreen, gui = 'undercurl' }), -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        StatusLine({ fg = c.norm, bg = c.faint, gui = 'bold' }), -- status line of current window
        StatusLineNC({ fg = c.dimmed, bg = c.faint }), -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLineFill({ StatusLineNC }), -- tab pages line, where there are no labels
        TabLine({ fg = c.dimmed, bg = c.faint }), -- tab pages line, not active tab page label
        TabLineSel({ gui = 'bold' }), -- tab pages line, active tab page label
        Title({ fg = c.accent4, gui = 'bold' }), -- titles for output from ":set all", ":autocmd" etc.
        MoreMsg({ Title }), -- |more-prompt|
        Question({ MoreMsg }), -- |hit-enter| prompt and yes/no questions
        ModeMsg({ MoreMsg }), -- 'showmode' message (e.g., "-- INSERT -- ")
        Visual({ bg = c.faintBlue }), -- Visual mode selection
        -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
        -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu({ IncSearch }), -- current match in 'wildmenu' completion

        -- These groups are not listed as default vim groups,
        -- but they are defacto standard group names for syntax highlighting.
        -- commented out groups should chain up to their "preferred" group by
        -- default,
        -- Uncomment and edit if you want more specific syntax highlighting.

        String({ fg = c.accent2 }), --   a string constant: "this is a string"
        -- Character      { }, --  a character constant: 'c', '\n'
        -- Boolean        { }, --  a boolean constant: TRUE, false
        -- Float          { }, --    a floating point constant: 2.3e10

        Function({ gui = 'bold' }), -- function name (also: methods for classes)
        Identifier({ Function }), -- (preferred) any variable name

        -- Conditional    { }, --  if, then, else, endif, switch, etc.
        -- Repeat         { }, --   for, do, while, etc.
        -- Label          { }, --    case, default, etc.
        -- Operator       { }, -- "sizeof", "+", "*", etc.
        Keyword({ fg = c.accent2, gui = 'bold' }), --  any other keyword
        -- Exception      { }, --  try, catch, throw

        -- Include        { }, --  preprocessor #include
        -- Define         { }, --   preprocessor #define
        -- Macro          { }, --    same as Define
        -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

        Type({ fg = c.accent3 }), -- (preferred) int, long, char, etc.
        Statement({ Type }), -- (preferred) any statement
        -- StorageClass   { }, -- static, register, volatile, etc.
        -- Structure      { }, --  struct, union, enum, etc.
        -- Typedef        { }, --  A typedef

        -- SpecialChar    { }, --  special character in a constant
        -- Tag            { }, --    you can use CTRL-] on this
        Delimiter({ fg = c.dimmed }), --  character that needs attention
        -- SpecialComment { }, -- special things inside a comment
        -- Debug          { }, --    debugging statements

        Underlined({ fg = c.accent1, gui = 'underline' }), -- (preferred) text that stands out, HTML links
        -- Bold       { gui = "bold" },
        -- Italic     { gui = "italic" },

        -- ("Ignore", below, may be invisible...)
        -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Todo({ fg = c.normRed, gui = 'bold' }), -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

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

        -- These groups are for the neovim tree-sitter highlights.
        -- As of writing, tree-sitter support is a WIP, group names may change.
        -- By default, most of these groups link to an appropriate Vim group,
        -- TSError -> Error for example, so you do not have to define these unless
        -- you explicitly want to support Treesitter's improved syntax awareness.

        -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        -- TSAttribute          { };    -- (unstable) TODO: docs
        -- TSBoolean            { };    -- For booleans.
        -- TSCharacter          { };    -- For characters.
        -- TSComment            { };    -- For comment blocks.
        -- TSConstructor        { };    -- For constructor calls and definition ` { }` in Lua, and Java constructors.
        -- TSConditional        { };    -- For keywords related to conditionnals.
        -- TSConstant           { };    -- For constants
        -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
        -- TSConstMacro         { };    -- For constants that are defined by macro `NULL` in C.
        -- TSError              { };    -- For syntax/parser errors.
        -- TSException          { };    -- For exception related keywords.
        -- TSField              { };    -- For fields.
        -- TSFloat              { };    -- For floats.
        -- TSFunction           { };    -- For function (calls and definitions).
        -- TSFuncBuiltin        { };    -- For builtin function `table.insert` in Lua.
        -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        -- TSInclude            { };    -- For include `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
        -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
        -- TSLabel              { };    -- For label `label:` in C and `:label:` in Lua.
        -- TSMethod             { };    -- For method calls and definitions.
        -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
        -- TSNone               { };    -- TODO: docs
        -- TSNumber             { };    -- For all numbers
        -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
        -- TSParameter          { };    -- For parameters of a function.
        -- TSParameterReference { };    -- For references to parameters of a function.
        -- TSProperty           { };    -- Same as `TSField`.
        -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
        -- TSPunctBracket       { };    -- For brackets and parens.
        -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
        -- TSRepeat             { };    -- For keywords related to loops.
        -- TSString             { };    -- For strings.
        -- TSStringRegex        { };    -- For regexes.
        -- TSStringEscape       { };    -- For escape characters within a string.
        -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
        -- TSType               { };    -- For types.
        -- TSTypeBuiltin        { };    -- For builtin types.
        -- TSVariable           { };    -- Any variable name that does not have another highlight.
        -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

        TSTag({ Type }), -- Tags like html tag names.
        -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
        -- TSText               { };    -- For strings considered text in a markup language.
        -- TSEmphasis           { };    -- For text to be represented with emphasis.
        -- TSUnderline          { };    -- For text to be represented with an underline.
        -- TSStrike             { };    -- For strikethrough text.
        -- TSTitle              { };    -- Text that is part of a title.
        -- TSLiteral            { };    -- Literal text.
        TSURI({ Underlined }), -- Any URI like a link or email.

        User1({ fg = c.bg, bg = c.normGreen }),
        User2({ fg = c.bg, bg = c.normRed }),
        User3({ fg = c.bg, bg = c.normBlue }),
    }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
