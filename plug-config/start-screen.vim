
let g:startify_custom_header = [
        \'                _                                       __ ',
        \'               | |                                     / _|',
        \'  ___ _   _  __| | ___    _ __ _ __ ___    ______ _ __| |_ ',
        \' / __| | | |/ _` |/ _ \  | .__| ._ ` _ \  |______| .__|  _|',
        \' \__ \ |_| | (_| | (_) | | |  | | | | | |        | |  | |  ',
        \' |___/\__,_|\__,_|\___/  |_|  |_| |_| |_|        |_|  |_|  ',
        \'                                                           ',
        \]

                                      
let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_reload_session_when_focused = 0

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    endfunction


let g:startify_enable_special = 0
