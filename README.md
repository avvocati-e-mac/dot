In questo repository ho caricato i miei “dot file” per uso personale … ma se a qualcuno possono interessare ovviamente sono a disposizione!


1. [Come installare il mio .vimrc](#come-installare-il-mio-vimrc)
	1. [Istruzioni per me o per chi fa un fork del mio dot repository](#istruzioni-per-me-o-per-chi-fa-un-fork-del-mio-dot-repository)
	2. [Creare la cartella di swp e undodir per Vim](#creare-la-cartella-di-swp-e-undodir-per-vim)
	3. [Come installare i plugin](#come-installare-i-plugin)
2. [Scorciatoie a tastiera personalizzate](#scorciatoie-a-tastiera-personalizzate)
3. [Plugin installati](#plugin-installati)
	1. [Goyo](#goyo)
	2. [Vim-airline gestore della statusline](#vim-airline-gestore-della-statusline)
	3. [Vim-pandoc e  Vim-pandoc-syntax (DA TESTARE)](#vim-pandoc-e--vim-pandoc-syntax-da-testare)
	4. [Vim-markdown-toc](#vim-markdown-toc)

## Come installare il mio .vimrc

Aprire il terminale e digitare il seguente comando:

```
curl -L 'https://raw.githubusercontent.com/Eriugen/dot/master/.vimrc' > .vimrc
```

### Istruzioni per me o per chi fa un fork del mio dot repository

Andare nella home con il seguente comando:

```
cd ~
```
Poi clonare il repository con il comando 

```
git clone git@github.com:Eriugen/dot.git .
```
Creare nella home un link simbolico al file .vimrc contenuto all'interno della cartella /dot con il seguente comando:

```
ln -sfn ~/dot/.vimrc .vimrc
```

### Creare la cartella di swp e undodir per Vim

Attualmente occorre creare la cartella dove sono contenuti i file di _swap_ di Vim (dove vengono salvate le versioni del file che si sta modificando mentre si eseguono le modifiche e prima di aver salvato)
e i salvataggi per gli undo tra differenti sessioni.

Da terminale digitare:

```
cd ~	
mkdir .vim/swp
mkdir .vim/undodir
```

### Come installare i plugin

In Vim Unix (Linux e macOS) digitare a terminale il seguente comando

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

[Fonte](https://github.com/junegunn/vim-plug#installation)  

A questo punto, in Vim, digitare:
```
: PlugInstall
```
Si aprirà una finestra che mostrerà lo stato di installazione del plugin

## Scorciatoie a tastiera personalizzate

Per visualizzare in Vim le scorciatoie personalizzate che ho creato digitare:

```
:map <leader>
```

## Plugin installati

### Goyo

### Vim-airline gestore della statusline
### Vim-pandoc e  Vim-pandoc-syntax (DA TESTARE)
### Vim-markdown-toc
