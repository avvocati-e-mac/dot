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

**Nota bene:** Questo comando scarica nella vostra home o cartella in cui state lavorando il file .vimrc. Questo file non sarà più sincronizzato in alcun modo con questo repository. È quindi solo una copia.

### Istruzioni per me o per chi fa un fork del mio dot repository

Andare nella home con il seguente comando:

```
cd ~
```
Poi clonare il repository con il comando 

```
git clone https://github.com/Eriugen/dot.git 
```
Creare nella home un link simbolico al file .vimrc contenuto all'interno della cartella /dot con il seguente comando:

```
ln -sfn ~/dot/.vimrc .vimrc
ln -sfn ~/dot/.zshrc .zshrc
ln -sfn ~/dot/.tmux.conf .tmux.conf
```

Fatto ciò c'è da entrare nella cartella dot ed impostare le credenziali locali come utente git.

```
cd dot
git config user.name "your-user-name"
git config user.email "your-email-addr"
```

Tra le virgolette fa inserito il nome che apparirà nella storia dei commit e l'email collegata.

[Fonte](https://coderwall.com/p/wkqf9q/local-global-git-config)

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

Ho aggiunto uno script introduttivo per cui non dovrebbe esserci la necessità di installare il gestore dei plugin …

È un esperimento, non l'ho ancora testato ma copiato da un altro utente [Fonte](https://github.com/benbrastmckie/.config), quindi per ora lascio anche la parte di guida all’installazione.

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

## Plugin installati in Vim

Ho aggiunto una notevole quantità di plug-in, molti li devo ancora testare.

### Goyo

### Vim-airline gestore della statusline
### Vim-pandoc e  Vim-pandoc-syntax (DA TESTARE)
### Vim-markdown-toc

Comandi di base per generare, modificare e cancellare l'indice (TOC: table of contents

```
:GenerateMarkdownTOC # Genera un nuovo indice
```

[Fonte](https://github.com/ajorgensen/vim-markdown-toc)

## Vim-which-key

Permette di vedere le scorciatorie a tastiera e personalizzarne alcune.

[Link al repositorty](https://github.com/liuchengxu/vim-which-key)

## Fugitive: plugin per GIT

Fugitive è il primo plug-in Vim per Git. O forse è il primo plugin Git per Vim? Ad ogni modo, è "così fantastico, dovrebbe essere illegale". Ecco perché si chiama Fugitive (fuggitivo in italiano).

[Link a fonte](https://github.com/tpope/vim-fugitive)

Comandi di base:

* `:Git`è l’equivalente di digitare `Git` a terminale. Si può abbreviare con il semplice comando `:G`che consiglio di usare per velocizzare la digitazione.
* `:Git add` ed il nome del / dei file da allestire / organizzare (staged) per il commit, se si deve allestire solo il file su cui si sta lavorando è possibile usare semplicemente il comando `:Gwrite`.
* `:Git commit`seguito da `-m`e le virgolette all'interno del quale indicare il testo del commit serve per eseguire il commit delle modifiche allestite / organizzate (staged).
* `:Git push`per inviare il commit al server Git (remoto, tipo online come GitHub o interno alla rete)
* `:Gbrowse` apre il documento su cui si sta lavorando nel browser su GitHub o altri repository online.

[Link per maggiori informazioni](https://github.com/tpope/vim-fugitive), alternativamente è possibile digitare il comando `:help fugitive`.

### FZF - fuzzy finder (digita il nome di un file e te lo trova …)

È necessario installare FZF con Hombrew, per macOS, o con un altro gestore di pacchetti con Linux.

[Fonte con istruzioni](https://github.com/junegunn/fzf#as-vim-plugin)

## Tmux.conf

[Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

La prima volta premere CTRL+B e poi **I** (maiuscolo come Installa)

[NordTmux](https://github.com/arcticicestudio/nord-tmux)

## Colori usati: Terminale (iTerm2), Tmux e Vim

[Nord](https://github.com/arcticicestudio)


