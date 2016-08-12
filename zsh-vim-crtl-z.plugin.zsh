#!/bin/bash
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}

# FIXME Remove those lines or make it run
# zle -N fancy-ctrl-z
# bindkey '^Z' fancy-ctrl-z
