if exists("did_load_filetypes")
      finish
endif

augroup filetypedetect
    au! BufNewFile,BufRead *.plt,*.gnuplot setf gnuplot
    au! BufNewFile,BufRead *.csv setf csv
augroup END
