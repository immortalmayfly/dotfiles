#!/usr/bin/env zsh
# Void Linux transient prompt

# Colors
RED='%F{red}'
GREEN='%F{green}'
YELLOW='%F{yellow}'
BLUE='%F{74}'
MAGENTA='%F{magenta}'
CYAN='%F{cyan}'
WHITE='%F{white}'
GRAY='%F{240}'
ENDC='%f'

# State
_PROMPT_LAST_EXIT_CODE=0

# Git status
_prompt_git() {
    git rev-parse --is-inside-work-tree &>/dev/null || return

    local branch dirty
    branch=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null) || return

    if [[ -n "$(git status --porcelain --ignore-submodules=dirty -uno 2>/dev/null | head -n 1)" ]]; then
        dirty='*'
    else
        dirty=''
    fi

    print -r -- " (${branch}${dirty})"
}

# Active prompt (multi-line)
_prompt_full() {
    local status_color status_icon
    if [[ $_PROMPT_LAST_EXIT_CODE -eq 0 ]]; then
        status_color=${GREEN}
        status_icon='✔'
    else
        status_color=${RED}
        status_icon="✘ $_PROMPT_LAST_EXIT_CODE"
    fi

    local ssh_message="${SSH_CLIENT:+ ${RED}[ssh]${ENDC}}"
    local git_info=$(_prompt_git)

    PROMPT="${GRAY}%D{%H:%M:%S}${ENDC} ${GREEN}%n${ssh_message}${ENDC} ${WHITE}at${ENDC} ${YELLOW}%M${ENDC} ${WHITE}in${ENDC} ${BLUE}%~${ENDC}${CYAN}${git_info}${ENDC}
${status_color}${status_icon}${ENDC} ${CYAN}❯${ENDC} "
}

# History prompt (single-line)
_prompt_minimal() {
    local status_color status_icon
    if [[ $_PROMPT_LAST_EXIT_CODE -eq 0 ]]; then
        status_color=${GREEN}
        status_icon='✔'
    else
        status_color=${RED}
        status_icon="✘ $_PROMPT_LAST_EXIT_CODE"
    fi

    PROMPT="${status_color}${status_icon}${ENDC} ${CYAN}❯${ENDC} "
}

# Pre-command: exit status & padding
_prompt_precmd() {
    _PROMPT_LAST_EXIT_CODE=$?
    
    if [[ -z "$_PROMPT_INITIALIZED" ]]; then
        _PROMPT_INITIALIZED=1
    else
        print ""
    fi
    
    _prompt_full
}

# Transient logic
_prompt_line_init() {
    _prompt_full
    [[ $CONTEXT == start ]] && zle .reset-prompt
}

_prompt_line_finish() {
    # Clear top line of multi-line prompt
    printf "\033[1A\033[2K"
    _prompt_minimal
    zle .reset-prompt
}

# Hooks
autoload -Uz add-zle-hook-widget
add-zle-hook-widget -d line-init _prompt_line_init 2>/dev/null
add-zle-hook-widget -d line-finish _prompt_line_finish 2>/dev/null

zle -N _prompt_line_init
zle -N _prompt_line_finish
add-zle-hook-widget line-init _prompt_line_init
add-zle-hook-widget line-finish _prompt_line_finish

autoload -Uz add-zsh-hook
add-zsh-hook precmd _prompt_precmd

