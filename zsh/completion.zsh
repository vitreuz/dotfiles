zmodload zsh/complist

# base completion settings
zstyle ':completion:*' completer _extensions _complete _approximate 
zstyle ':completion:*' menu select search

# enable caching
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"

# general coloring for competions
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'

# separate default completions from other groups (e.g. aliases or options)
zstyle ':completion:*' group-name ''

# use nice file formatting
zstyle ':completion:*' file-list all

# vim-like navigation
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'l' vi-forward-char
