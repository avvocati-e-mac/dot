let mapleader=" "

filetype plugin on

set nocompatible				" vim-specific settings, non-vi-compatible
set backspace=indent,eol,start 	" Allow backspace in insert mode
set number						" Line numbers
set relativenumber				" Conteggio numeri relativi rispetto alla linea in cui si è
set ruler

set hidden						" Allow hidden buffers
filetype plugin indent on		" Enable file type detection and do language-dependent indenting.
set history=1000				" Default = 8
set autoread					" Ricarica il file modificato in Vim

" Visualizzazione del testo
set encoding=utf-8				" Permette la visualizzazione di caratteri accentati come è
set scrolloff=3					" Il numero di righe da tenere sopra e sotto il punto in cui è posizionato il cursore
set sidescrolloff=5				" Il numero di colonne dello schermo da tenere a destro a sinistra della posizione in cui si trova il cursore

" Gestione dei file di swap (tutti i file di swap di Vim verranno salvati in
" questa cartella)

set directory=$HOME/.vim/swp//	" Richiede prima la creazione della cartella: mkdir ~/.vim/swp

nnoremap ; :

set showcmd						" Mostra i comandi incompleti in basso nella finestra
set showmode 					" Mostra il modo in ci si sta lavorando in Vim in basso a sinistra

set tabstop=4					" Default tabs are too big
set wrap						" Fa scorrere il testo della finestra in base alle parole (wrap)
set linebreak					" Fa scorrere il testo in modo da non troncare le parole
set nolist						" list disables linebreak
set textwidth=0					" Evita a Vim di inserire automaticamente delle interruzioni di linea
set wrapmargin=0
set formatoptions-=t			" Don't change wrapping on existing lines
set formatoptions+=l			" Black magic

" Spell-check attiva / disattiva con <leader>o, 'o' per 'ortografia':
	map <leader>o :setlocal spell! spelllang=it,en_us<CR>

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults. (Luke Smith)
	set splitbelow splitright

" Nerd tree (Luke Smith)
	map <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Velocizza la navigazione nelle finestre di Vim (Luke Smith):
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l


" Apri .vimrc (idea presa da Luke Smith))

	map <leader>v :vsp<Space>~/.vimrc<CR>

" # Color Scheme Solarized [qui scaricato](https://github.com/altercation/vim-colors-solarized)
"
syntax enable
set background=dark
" colorscheme solarized

colorscheme desert

set laststatus=2 		" Mostra sempre la status line

set statusline+=%t		" il percorso del file
set statusline+=%{&ff} " Tipo di file
set statusline+=%h		" Help file flag
set statusline+=%m		" Se il file è stato modifica
set statusline+=%r		" Flag file in sola lettura
set statusline+=%c,		" La colonna su cui è il cursore
set statusline+=%l/%L	" La linea su cui è il cursore ed il numero di linee totale
set statusline+=\ %P	" Mostra la propria posizione in percentuale rispetto alla lunghezza complessiva del documento

set wildmode=longest,list,full " Attiva auto-completamento
set wildmenu " Mostra le opzioni di completamento della command line

if has('gui_running')
    set background=light
else
    set background=dark
endif

" Documentazione in italiano ed inglese
:set helplang=it,en

" Pathogen

" execute pathogen#infect()
" syntax on
" filetype plugin indent on

"semplicemente tenendo premuto CTRL e spostando la riga con le frecce
" in alto e in basso.
nmap <C-Up> ddkP
nmap <C-Down> ddp

" i caratteri nascosti, come ad esempio gli spazi a fine riga,
" e i caratteri di tabulazione
nmap <leader>l :set list!<CR>

" AUTOMAZIONI UTILI

" Navigare con le guide (utile per spostarsi velocemente con dei segnaposti)

 	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	map <leader><leader> <Esc>/<++><Enter>"_c4l

" Scorciatoie utili in LaTeX

	" Enfatizzato
	autocmd FileType tex inoremap xem \emph{}<++><Esc>T{i
	" Grassetto
	autocmd FileType tex inoremap xbf \textbf{}<++><Esc>T{i
	" Corsivo
	autocmd FileType tex inoremap xit \textit{}<++><Esc>T{i
	" Citazione
	autocmd FileType tex inoremap xct \textcite{}<++><Esc>T{i
	autocmd FileType tex inoremap xcp \parencite{}<++><Esc>T{i
	" Smallcap
	autocmd FileType tex inoremap xsc \textsc{}<Space><++><Esc>T{i

"MARKDOWN
	autocmd Filetype markdown,rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
	autocmd Filetype markdown,rmd inoremap xn ---<Enter><Enter>
	autocmd Filetype markdown,rmd inoremap xb ****<++><Esc>F*hi
	autocmd Filetype markdown,rmd inoremap xs ~~~~<++><Esc>F~hi
	autocmd Filetype markdown,rmd inoremap xc __<++><Esc>F_i
	autocmd Filetype markdown,rmd inoremap xh ====<Space><++><Esc>F=hi
	autocmd Filetype markdown,rmd inoremap xi ![](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap xa [](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap x1 #<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap x2 ##<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap x3 ###<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap xl --------<Enter>

" Dialetto LaTeX
"
" Testo centrato
autocmd Filetype markdown,rmd map <leader>k 0O\\begin{center}<esc>jjO\\end{center}

" Testo centrato in insert mode
autocmd Filetype markdown,rmd inoremap xtc \begin{center}<Enter><Enter>\end{center}<esc>kA

" Grassetto parola selezionata mentre si scrive / insert mode
inoremap xbb <Esc>bi**<Esc>ea**

" Grassetto in modalità visuale
vnoremap <leader>b c**<Esc>pi**<Esc>

" Corsivo in modalità visuale
vnoremap <leader>i c_<Esc>pi_<Esc>

" Link in modalità visuale
vnoremap <leader>l c[<Esc>pi](<++>)

" Link dalla clipboard di macOS in modalità visuale
vnoremap <leader>p c[<Esc>pi](<Esc>"+pa)<Esc>

"Generale

inoremap `e è
inoremap 'e é
inoremap `e è
inoremap `a à
inoremap `i ì
inoremap `o ò
inoremap `u ù
inoremap `E È
inoremap 'E É
inoremap `E È
inoremap `A À
inoremap `I Ì
inoremap `O Ò
inoremap `U Ù
inoremap euro €

" Inserimento documenti per PCT in Virtual block mode / Visuale Blocco
vnoremap <leader>w I[doc00]: <esc>
