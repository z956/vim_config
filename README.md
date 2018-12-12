# vim config

## Shortcut
### Normal mode
`bd` for deleting current buffer

`C-j` for moving to the next buffer

`C-k` for moving to the previous buffer

`<SPC> <num>` for switching to the buffer with the specified number

`<F10>` for opening/closing nerdtree

## Note
<p>To prevent open vim/nvim recursively, I use env variable $INSIDE_VIM to indicate we are in vim</p>

Add the following line in `.bashrc` or `.zshrc`

```bash
if [ "$INSIDE_VIM" ]; then
    alias vi='echo -e "\e[91mERROR\e[39m: you are in vim and you should not use vim recursively" && test'
    alias vim='vi'
    alias nvim='vi'
else
    alias vi="nvim"
    alias vim="nvim"
fi
```

## TODO 1
<p>The color of tabline is weird when loading vim-wintabs with vim-airline</p>
<p>I reset some variables after loading plugins</p>
<p>The color set is only fit for wombat</p>

## TODO 2
<p>Add c/c++ autocomplete plugin
