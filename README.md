# dot

In questo repository ho caricato i miei “dot file” per uso personale … ma se a qualcuno possono interessare ovviamente sono a disposizione!

# Istruzioni di base

## 1. Come installare il mio .vimrc

### 1.1 Copiare il contenuto del file di testo nel vostro .vimrc

Potete copiare il testo del mio _vimrc_ nel vostro .vimrc

### 1.2 Clonare il repository

Eseguite il clone del repository e poi nel vostro .vimrc inserite la seguente riga:
```
  source ~/dot/.vimrc
```
presupponendo che abbiate fatto il clone nella vostra cartella Home, altrimenti inserite il percorso specifico di dove si trova il “mio” vimrc. 

## 2. Creare la cartella di swp per Vim

Attualmente occorre creare la cartella dove sono contenuti i file s _swap_ di Vim (dove vengono salvate le versioni del file che si sta modificando mentre si eseguono le modifiche e prima di aver salvato)

Da terminale digitare:

```
  mkdir .vim
  cd .vim
  mkdir swp
  cd ~
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


