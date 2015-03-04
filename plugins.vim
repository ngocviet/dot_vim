" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" Vundle
" ---------------
command! ReloadVundle source ~/.vim/vundle.vim
function BundleReloadAndRun(command)
  :ReloadVundle
  execute a:command
endfunction

nnoremap <Leader>bi :call BundleReloadAndRun("BundleInstall")<CR>
nnoremap <Leader>bu :call BundleReloadAndRun("BundleInstall!")<CR>
nnoremap <Leader>bc :call BundleReloadAndRun("BundleClean")<CR>

" ---------------
" space.vim
" ---------------
" Disables space mappings in select mode to fix snipMate.
let g:space_disable_select_mode = 1

" ---------------
" Syntastic
" ---------------
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': [] }
let g:syntastic_html_checkers = ['handlebars']

" Hat tip http://git.io/SPIBfg
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_full_redraws = 1

" ---------------
" NERDTree
" ---------------
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeMinimalUI = 0
" Close Vim if NERDTree is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif

" ---------------
" Indent Guides
" ---------------
let g:indent_guides_enable_on_vim_startup = 1

" ---------------
" Session
" ---------------
let g:session_autosave = 0
let g:session_autoload = 0
nnoremap <leader>os :OpenSession<CR>

" ---------------
" Tabular
" ---------------
nnoremap <Leader>t= :Tabularize assignment<CR>
vnoremap <Leader>t= :Tabularize assignment<CR>
nnoremap <Leader>t: :Tabularize symbol<CR>
vnoremap <Leader>t: :Tabularize symbol<CR>
nnoremap <Leader>t, :Tabularize comma<CR>
vnoremap <Leader>t, :Tabularize comma<CR>

" ---------------
" Fugitive
" ---------------
nnoremap <Leader>gc :Gcommit -v<CR>
nnoremap <Leader>gca :Gcommit -a -v<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nnoremap <Leader>gu :Git pull<CR>
nnoremap <Leader>gd :Gdiff<CR>
" Exit a diff by closing the diff window
nnoremap <Leader>gx :wincmd h<CR>:q<CR>
" Start git command
nnoremap <leader>gi :Git<space>
" Undo the last commit
command! Gcundo :Git reset HEAD~1

" ---------------
" Zoomwin
" ---------------
" Zoom Window to Full Size
nnoremap <silent> <leader>wo :ZoomWin<CR>

" ---------------
" ctrlp.vim
" ---------------
" Ensure Ctrl-P isn't bound by default
let g:ctrlp_map = ''

" ---------------
" ctrlp cmatcher
" ---------------
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

" Ensure max height isn't too large. (for performance)
let g:ctrlp_max_height = 10
" Fix fix new windows opening in split from startify
let g:ctrlp_reuse_window = 'startify'
let g:ctrlp_mruf_max = 350
let g:ctrlp_mruf_default_order = 0

" Leader Commands
nnoremap <leader>t :CtrlPRoot<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>u :CtrlPCurFile<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>

if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " HatTip: http://robots.thoughtbot.com/faster-grepping-in-vim and
  " @ethanmuller
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" ---------------
" airline
" ---------------
let g:airline_theme = 'jellybeans'
let g:airline_powerline_fonts = 1
let g:airline_detect_modified = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline_mode_map = {
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'v'  : 'V',
      \ 'V'  : 'VL',
      \ 'c'  : 'CMD',
      \ '' : 'VB',
      \ }
" Show the current working directory folder name
let g:airline_section_b = '%{substitute(getcwd(), ".*\/", "", "g")} '
" Just show the file name
let g:airline_section_c = '%t'
let g:airline_section_y = ''
let g:airline_section_z = '%3p%% %#__accent_bold#%4l%#__restore__#:%3'
let g:airline_section_z = '%3p%% %{substitute(line("."), "\\v(\\d)((\\d\\d\\d)+\\d@!)@=", "\\1,", "g")}|%{substitute(line("$"), "\\v(\\d)((\\d\\d\\d)+\\d@!)@=", "\\1,", "g")}'

" ---------------
" jellybeans.vim colorscheme tweaks
" ---------------
" Make cssAttrs (center, block, etc.) the same color as units
hi! link cssAttr Constant

" ---------------
" Ag.vim
" ---------------
nnoremap <silent> <leader>as :AgFromSearch<CR>
nnoremap <leader>ag :Ag<space>

" ---------------
" surround.vim
" ---------------
" Use # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" Thanks to http://git.io/_XqKzQ
let g:surround_35  = "#{\r}"

" Shortcuts for common surrounds
map <leader>y# ysi"#

" ---------------
" Gifl - Google I'm Feeling Lucky URL Grabber
" ---------------
let g:LuckyOutputFormat='markdown'
" I sometimes run vim without ruby support.
let g:GIFLSuppressRubyWarning = 1

" ------------
" sideways.vim
" ------------
noremap gs :SidewaysRight<cr>
noremap gS :SidewaysLeft<cr>

" ---------------
" switch.vim
" ---------------
nnoremap - :Switch<cr>

" ---------------
" indenthtml
" ---------------
" Setup indenthtml to propertly indent html. Without this, formatting doesn't
" work on html.
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" ---------------
" vim-markdown
" ---------------
let g:vim_markdown_folding_disabled = 1

" ---------------
" Unconditional Paste
" ---------------
let g:UnconditionalPaste_NoDefaultMappings = 1
nnoremap gcP <Plug>UnconditionalPasteCharBefore
nnoremap gcp <Plug>UnconditionalPasteCharAfter

" ---------------
" Gist.vim
" ---------------
if has('macunix') || has('mac')
  let g:gist_clip_command = 'pbcopy'
endif
let g:gist_post_private = 1

" ---------------
" MatchTagAlways
" ---------------
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'handlebars' : 1,
    \ 'eruby' : 1,
    \}

" ---------------
" YouCompleteMe
" ---------------
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_filetype_specific_completion_to_disable = {
    \ 'ruby' : 1,
    \ 'javascript' : 1,
    \}
" --------------------------------------------
" Make YouCompleteMe compatible with UltiSnips
" --------------------------------------------
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" UltiSnips
" ---------------
let g:UltiSnipsUsePythonVersion = 2
" let g:UltiSnipsSnippetDirectories=["MyUltiSnips"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" ---------------
" vim-signify
" ---------------
let g:signify_mapping_next_hunk = '<leader>gj'
let g:signify_mapping_prev_hunk = '<leader>gk'
let g:signify_mapping_toggle_highlight="<nop>"
let g:signify_mapping_toggle="<nop>"
" Makes switching buffers in large repos have no delay
let g:signify_update_on_bufenter = 0
let g:signify_sign_overwrite = 0

" ---------------
" vim-startify
" ---------------
let g:startify_list_order = [
        \ ['   Recent'],
        \ 'files',
        \ ['   Last modified'],
        \ 'dir',
        \ ]
let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ $VIMRUNTIME .'/doc',
            \ 'bundle/.*/doc',
            \ ]
let g:startify_files_number = 10
let g:startify_custom_indices = ['a', 'd', 'f', 'g', 'h']
let g:startify_change_to_dir = 0

hi StartifyBracket ctermfg=240
hi StartifyFooter  ctermfg=111
hi StartifyHeader  ctermfg=203
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240

" Show Startify and NERDTree on start
autocmd VimEnter *
            \ if !argc() |
            \   Startify |
            \   NERDTree |
            \   execute "normal \<c-w>w" |
            \ endif
" Keep NERDTree from opening a split when startify is open
autocmd FileType startify setlocal buftype=

" ---------------
" vim-togglecursor
" ---------------
let g:togglecursor_leave='line'

" -----------------------
" rails.vim and ember.vim
" -----------------------
nnoremap <leader>e   :E
nnoremap <leader>emm :Emodel<space>
nnoremap <leader>evv :Eview<space>
nnoremap <leader>ecc :Econtroller<space>

" Rails Only
nnoremap <leader>eff :Efabricator<space>
nnoremap <leader>ell :Elayout<space>
nnoremap <leader>ela :Elayout<space>
nnoremap <leader>elo :Elocale<space>
nnoremap <leader>elb :Elib<space>
nnoremap <leader>eee :Eenvironment<space>
nnoremap <leader>ehh :Ehelper<space>
nnoremap <leader>eii :Einitializer<space>
nnoremap <leader>ejj :Ejavascript<space>
nnoremap <leader>ess :Espec<space>
nnoremap <leader>esm :Espec models/
nnoremap <leader>esc :Espec controllers/
nnoremap <leader>esv :Espec views/
nnoremap <leader>esl :Espec lib/

" Add custom commands for Rails.vim
" Thanks to http://git.io/_cBVeA and http://git.io/xIKnCw
let g:rails_projections = {
      \ 'app/models/*.rb': {'keywords': 'validates_conditional'},
      \ 'db/seeds/*.rb': {'command': 'seeds'},
      \ 'app/concerns/*.rb': {'command': 'concern'},
      \ 'spec/support/*.rb': {'command': 'support'},
      \ 'db/seeds.rb': {'command': 'seeds'}}

let g:rails_gem_projections = {
      \ "factory_girl_rails": {
      \   "spec/factories.rb": {"command": "factory"},
      \   "spec/factories/*_factory.rb": {
      \     "command": "factory",
      \     "affinity": "model",
      \     "alternate": "app/models/%s.rb",
      \     "related": "db/schema.rb#%p",
      \     "test": "spec/models/%s_spec.rb",
      \     "template": "FactoryGirl.define do\n  factory :%s do\n  end\nend",
      \     "keywords": "factory sequence"
      \   },
      \   "spec/factories/*.rb": {
      \     "command": "factory",
      \     "affinity": "collection",
      \     "alternate": "app/models/%o.rb",
      \     "related": "db/schema.rb#%s",
      \     "test": "spec/models/%o_spec.rb",
      \     "template": "FactoryGirl.define do\n  factory :%o do\n  end\nend",
      \     "keywords": "factory sequence"
      \   },
      \  },
      \ "fabrication": {
      \   "spec/fabricators/*_fabricator.rb": {
      \     "command": "fabricator",
      \     "affinity": "model",
      \     "alternate": "app/models/%s.rb",
      \     "related": "db/schema.rb#%p",
      \     "test": "spec/models/%s_spec.rb",
      \     "template": "Fabricator(:%s) do\nend",
      \     "keywords": "sequence initialize_with on_init transient after_build before_validation after_validation before_save before_create after_create after_save"
      \   },
      \ },
      \ "draper": {
      \   "app/decorators/*_decorator.rb": {
      \     "command": "decorator",
      \     "affinity": "model",
      \     "test": "spec/decorators/%s_spec.rb",
      \     "related": "app/models/%s.rb",
      \     "template": "class %SDecorator < Draper::Decorator\nend"
      \   }
      \ },
      \ "cucumber-rails": {
      \   "features/*.feature": {"command": "feature"},
      \   "features/step_definitions/*_steps.rb": {"command": "steps"},
      \   "features/support/*.rb": {"command": "support"}
      \ },
      \ "active_model_serializers": {
      \   "app/serializers/*_serializer.rb": {
      \     "command": "serializer",
      \     "affinity": "model",
      \     "test": "spec/serializers/%s_spec.rb",
      \     "related": "app/models/%s.rb",
      \     "template": "class %SSerializer < ActiveModel::Serializer\n  attributes :id\nend",
      \     "keywords": "attributes embed has_many has_one"
      \   }
      \ }}

" ---------------
" cscope_map
" ---------------
noremap `s :cs find s <C-R>=expand("<cword>")<CR><CR>
noremap `g :cs find g <C-R>=expand("<cword>")<CR><CR>
noremap `c :cs find c <C-R>=expand("<cword>")<CR><CR>
noremap `t :cs find t <C-R>=expand("<cword>")<CR><CR>
noremap `e :cs find e <C-R>=expand("<cword>")<CR><CR>
noremap `f :cs find f <C-R>=expand("<cfile>")<CR><CR>
noremap `i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
noremap `d :cs find d <C-R>=expand("<cword>")<CR><CR>

noremap `ss :scs find s <C-R>=expand("<cword>")<CR><CR>
noremap `sg :scs find g <C-R>=expand("<cword>")<CR><CR>
noremap `sc :scs find c <C-R>=expand("<cword>")<CR><CR>
noremap `st :scs find t <C-R>=expand("<cword>")<CR><CR>
noremap `se :scs find e <C-R>=expand("<cword>")<CR><CR>
noremap `sf :scs find f <C-R>=expand("<cfile>")<CR><CR>
noremap `si :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
noremap `sd :scs find d <C-R>=expand("<cword>")<CR><CR>

noremap ``s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
noremap ``g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
noremap ``c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
noremap ``t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
noremap ``e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
noremap ``f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
noremap ``i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
noremap ``d :vert scs find d <C-R>=expand("<cword>")<CR><CR>


" ---------------
" ---------------
" Voogle
" ---------------
let g:voogle_map="<leader>gg"

" ---------------
" Vimux
" ---------------
let g:VimuxUseNearestPane = 1
nnoremap <leader>a :call VimuxRunCommand("spring rspec --fail-fast")<CR>
nnoremap <leader>A :call VimuxRunCommand("spring rspec")<CR>
nnoremap <leader>cu :call VimuxRunCommand("spring cucumber")<CR>
nnoremap <leader>ca :call VimuxRunCommand("spring cucumber; spring rspec")<CR>
nnoremap <leader>cm :VimuxPromptCommand<CR>
function WriteAndVimuxRunLastCommand()
  :call WriteBufferIfNecessary()
  :call VimuxRunLastCommand()
endfunction
nnoremap <leader>w :call WriteAndVimuxRunLastCommand()<CR>
command! REmigrate :call VimuxRunCommand("rake db:drop db:create db:migrate test:prepare")
command! Migrate :call VimuxRunCommand("rake db:migrate test:prepare")
command! Rollback :call VimuxRunCommand("rake db:rollback")

" ---------------
" Turbux
" ---------------
let g:no_turbux_mappings = 1
map <leader>X <Plug>SendTestToTmux
map <leader>x <Plug>SendFocusedTestToTmux
let g:turbux_command_rspec = 'spring rspec'
let g:turbux_command_cucumber = 'spring cucumber'

" ---------------
" tcomment_vim
" ---------------
let g:tcommentMaps = 0
nnoremap <silent><leader>cc :TComment<CR>
vnoremap <silent><leader>cc :TComment<CR>
nnoremap <silent><leader>cb :TCommentBlock<CR>
vnoremap <silent><leader>cb :TCommentBlock<CR>

" --------------
" tmux navigator
" --------------
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>

" ------
" ColorV
" ------
let g:colorv_preview_ftype = 'css,javascript,scss,stylus'

" -------
" portkey
" -------

let g:portkey_autostart = 1

" ---------
" Ember.vim
" ---------
nnoremap <leader>eaa :Easset<space>
nnoremap <leader>err :Eroute<space>
nnoremap <leader>ert :Econfig router<CR>
nnoremap <leader>ett :Etemplate<space>

" --------
" vim-anzu
" --------
nmap n <Plug>(anzu-n)
nmap N <Plug>(anzu-N)
nmap * <Plug>(anzu-star)
nmap # <Plug>(anzu-sharp)
let g:airline#extensions#anzu#enabled = 1

" ---------------
" vimwiki
" ---------------
let wiki_1 = {}
let wiki_1.path = 'D:\onlinedrive\BoxSync\vimwiki'
" let wiki_1.html_template = 'D:\onlinedrive\BoxSync\vimwiki_html\templates\header.tpl'
let wiki_1.nested_syntaxes = {'python':'python', 'c++':'cpp'}
let g:vimwiki_list = [wiki_1]

function! VimwikiLinkHandler(link) "{{{ Use Vim to open links with the
" 'vlocal:' or 'vfile:' schemes.  E.g.:
"   1) [[vfile:///~/Code/PythonProject/abc123.py]], and
"   2) [[vlocal:./|Wiki Home]]
let link = a:link
if link =~ "vlocal:" || link =~ "vfile:"
  let link = link[1:]
else
  return 0
endif
let [idx, scheme, path, subdir, lnk, ext, url] =
     \ vimwiki#base#resolve_scheme(link, 0)
if g:vimwiki_debug
  echom 'LinkHandler: idx='.idx.', scheme=[v]'.scheme.', path='.path.
       \ ', subdir='.subdir.', lnk='.lnk.', ext='.ext.', url='.url
endif
if url == ''
  echom 'Vimwiki Error: Unable to resolve link!'
  return 0
else
  call vimwiki#base#edit_file('tabnew', url, [], 0)
  return 1
endif
endfunction " }}}
