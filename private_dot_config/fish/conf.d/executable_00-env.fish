## Set terminal if available
type -q kitty && set -gx TERMINAL 'kitty'

## Use Neovim as default editor and manpager if installed
if type -q nvim
    set -gx EDITOR 'nvim'
    set -gx MANPAGER 'nvim +Man!'
else
    set -gx EDITOR 'vim'
    set -gx MANPAGER 'less'
end

## Set custom GOPATH
type -q go && set -gx GOPATH "$HOME/.go"
