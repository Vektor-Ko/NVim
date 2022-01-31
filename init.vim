
autocmd!

scriptencoding utf-8

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup Vek
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
