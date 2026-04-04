# tmux config

## where i belong

`~/.tmux.conf`

## setup

```bash
# ensure u are in ur home dir ~
cd

# this should clone the repo into ~/.tmux
git clone <this-repo>

# create a soft link
ln -s ~/.tmux/tmux.conf ~/.tmux.conf
```

## goals

as of now, it is as minimal as possible, so it is as portable as possible

meaning no `tpm` plugins, just vanilla, plug-and-play `tmux`

maybe in the future i'll entertain and play with `tpm` but for now, just vanilla

## troubleshooting

### ssh from ghostty and running tmux
> `missing or unsuitable terminal: xterm-ghostty`
run this
```bash
infocmp -x xterm-ghostty | ssh YOUR-SERVER -- tic -x -
```
source: https://ghostty.org/docs/help/terminfo#ssh
