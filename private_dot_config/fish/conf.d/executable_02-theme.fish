## Load matugen theme if it exists
test -e ~/.config/fish/themes/matugen.theme && fish_config theme choose matugen || true

## Initialize Starship prompt if available
type -q starship && starship init fish | source
