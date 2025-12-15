vim9script

# vim-oscyank

if (!has('nvim') && !has('clipboard_working'))
    var VimOSCYankPostRegisters = ['', '+', '*']
    # copy text to clipboard on both (y)ank and (d)elete
    var VimOSCYankOperators = ['y', 'd']
    def VimOSCYankPostCallback(event: dict<any>): void
        if index(VimOSCYankPostRegisters, event.regname) != -1 && index(VimOSCYankOperators, event.operator) != -1
            g:OSCYankRegister(event.regname)
        endif
    enddef
    augroup VimOSCYankPost
        autocmd!
        autocmd TextYankPost * VimOSCYankPostCallback(v:event)
    augroup END
endif

g:oscyank_silent = 1

## vim-airline

# g:airline_section_b = '%{FugitiveStatusline()}'
