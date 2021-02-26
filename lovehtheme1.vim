
" ----------------------------------------------------------------------------
" Theme name: lovehtheme1.vim
" ----------------------------------------------------------------------------
" Setup
" ----------------------------------------------------------------------------
set background=dark
hi clear

if exists('syntax on')
    syntax reset
endif
let g:colors_name='lovehtheme1'
set t_Co=256

" Line number
hi lineNr guifg=grey guibg=NONE
hi cursorLineNr term=bold guifg=yellow guibg=NONE
" EOF tildes
hi EndOfBuffer ctermfg=NONE
" Tabs
hi TabLineFill ctermfg=grey ctermbg=NONE
hi Tabline ctermfg=NONE ctermbg=NONE
hi TablineSel ctermfg=NONE ctermbg=NONE
" Popup menu
hi Pmenu guibg=NONE
" Color of selected item in popup menu. Not sure about this one yet.
" hi PmenuSel guibg=yellow
" Git diffs
hi DiffAdd guibg=NONE guifg=green
hi DiffChange guibg=NONE guifg=purple
hi DiffDelete guibg=NONE guifg=red
" Hide ugly grey bar to the left
highlight SignColumn ctermbg=NONE guibg=NONE

" Variables
" ----------------------------------------------------------------------------
let lovecyan = '#20b2aa'
" major
" ----------------------------------------------------------------------------

hi Normal     guisp=NONE guifg=#c6c6c4 guibg=NONE ctermfg=251 ctermbg=234 gui=NONE cterm=NONE
hi Comment    guisp=NONE guifg=#7a4e4e guibg=NONE ctermfg=95  ctermbg=234 gui=NONE cterm=NONE
hi Constant   guisp=NONE guifg=#1de0da guibg=NONE ctermfg=44  ctermbg=234 gui=NONE cterm=NONE
hi Identifier guisp=NONE guifg=yellow guibg=NONE ctermfg=172 ctermbg=234 gui=NONE cterm=NONE
hi Statement  guisp=NONE guifg=#e67300 guibg=NONE ctermfg=172 ctermbg=234 gui=NONE cterm=NONE
hi PreProc    guisp=NONE guifg=#03c03c guibg=NONE ctermfg=35  ctermbg=234 gui=NONE cterm=NONE
hi Type       guisp=NONE guifg=#0f89f5 guibg=NONE ctermfg=172 ctermbg=234 gui=NONE cterm=NONE
hi Special    guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Underlined guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Ignore     guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Error      guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Todo       guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE

" minor
" ----------------------------------------------------------------------------

hi String         guisp=NONE guifg=#009f6b guibg=NONE ctermfg=35  ctermbg=234 gui=NONE cterm=NONE
hi Character      guisp=NONE guifg=#009f6b guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Number         guisp=NONE guifg=cyan guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Boolean        guisp=NONE guifg=#ff5f00 guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Float          guisp=NONE guifg=cyan guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Function       guisp=NONE guifg=#18c718 guibg=NONE ctermfg=35  ctermbg=234 gui=NONE cterm=NONE
hi Conditional    guisp=NONE guifg=#e67300 guibg=NONE ctermfg=172 ctermbg=234 gui=NONE cterm=NONE
hi Repeat         guisp=NONE guifg=#e67300 guibg=NONE ctermfg=172 ctermbg=234 gui=NONE cterm=NONE
hi Label          guisp=NONE guifg=#ffff00 guibg=NONE ctermfg=226 ctermbg=234 gui=NONE cterm=NONE
hi Operator       guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Keyword        guisp=NONE guifg=#ff5f00 guibg=NONE ctermfg=28  ctermbg=234 gui=NONE cterm=NONE
hi Exception      guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Include        guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Define         guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Macro          guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi PreCondit      guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi StorageClass   guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Structure      guisp=NONE guifg=#d7d75f guibg=NONE ctermfg=185 ctermbg=234 gui=NONE cterm=NONE
hi Typedef        guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi SpecialChar    guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Tag            guisp=NONE guifg=#ae0dd6 guibg=NONE ctermfg=128 ctermbg=234 gui=NONE cterm=NONE
hi Delimiter      guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi SpecialComment guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
hi Debug          guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE

" Language specific
" ----------------------------------------------------------------------------
"  Java

hi JavaStorageClass guifg=#ff5f00
hi JavaStructure guifg=#ff5f00

" Vim Wiki
hi VimWikiHeaderChar guifg=#ff5f00
hi VimWikiHeader1 guifg=#ffd700 gui=bold
hi VimWikiHeader2 guifg=#ffd700 gui=bold
hi VimWikiHeader3 guifg=#ffd700 gui=bold
hi VimWikiHeader4 guifg=#ffd700 gui=bold
" Really crisp cyan color below, maybe use for java or override cyan?
" hi VimWikiLink guifg=lovecyan - haven't figured out how to set variables yet
hi VimWikiLink guifg=#20b2aa
" hi VimWikiListTodo guifg=#ff5f00 -- this seems to break "o" on a todolist
" for some reason.
hi VimWikiHR guifg=#ff5f00
