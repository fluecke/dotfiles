function! Dotify()
    echo "Compiling graph..."
    let thefile = expand("%")
    let theoutfile = expand("%:r") . ".pdf"
    let thecommand = "!dot -Tpdf " . thefile . " -o" . theoutfile
    execute thecommand
    echo "Done compiling graph."
endfunction

function! OpenPDF()
    let thefile = expand("%")
    let theoutfile = expand("%:r") . ".pdf"
    let thecommand = '!open ' . theoutfile
    execute thecommand
endfunction

command Dotify silent call Dotify()

nmap <silent> <leader>dc :Dotify<CR>
nmap <silent> <leader>dv :silent call OpenPDF()<CR>
