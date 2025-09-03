## Smarter `cp`: automatically use -r for directories
function copy
    set count (count $argv | tr -d \n)
    if test "$count" = 2; and test -d "$argv[1]"
        set from (string trim -r '/' -- $argv[1])
        set to $argv[2]
        command cp -r $from $to
    else
        command cp $argv
    end
end

## Yazi wrapper: auto-cd on exit
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and test -n "$cwd"; and test "$cwd" != "$PWD"
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
