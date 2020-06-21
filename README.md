# dot

In questo repository ho caricato i miei “dot file” per uso personale … ma se a qualcuno possono interessare ovviamente sono a disposizione!

# Istruzioni di base

## 1. Come installare il mio .vimrc

Aprire il terminale e digitare il seguente comando:

```
	curl -L 'https://raw.githubusercontent.com/Eriugen/dot/master/.vimrc' > .vimrc

```

### 1.1 Istruzioni per me o per chi fa un fork del mio dot repository

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

## 2. Creare la cartella di swp e undodir per Vim

Attualmente occorre creare la cartella dove sono contenuti i file di _swap_ di Vim (dove vengono salvate le versioni del file che si sta modificando mentre si eseguono le modifiche e prima di aver salvato)
e i salvataggi per gli undo tra differenti sessioni.

Da terminale digitare:

```
	cd ~	
	mkdir .vim/swp
	mkdir .vim/undodir
```

## Scorciatoie a tastiera personalizzate

## Come installare i plugin

In Vim Unix (Linux e macOS) digitare a terminale il seguente comando

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

[Fonte](https://github.com/junegunn/vim-plug#installation)  

A questo punto, in Vim, digirare:
```
: PlugInstall
```
Si aprirà una finesta che mostrerà lo stato di installazione del plugin

## Goyo

## Vim-airline gestore della statusline

## Cose da tenere presente

Ho inserito un sistema di ”auto salvataggio”. Ogni volta che, dopo aver fatto una modifica in _insert mode_,  si preme Esc il file viene salvato.

Per ora è un test, teoricamente con i file di Swap di Vim non c'è il problema ma evita di dover digitare sempre ```:w``` ogni volta che si vuole salvare.
