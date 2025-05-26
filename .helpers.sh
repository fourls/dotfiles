#!/bin/bash

my_prompt() {
    local red ylw mgn rst
    red='\033[0;31m'
    ylw='\033[0;33m'
    mgn='\033[0;35m'
    rst='\033[0m'
    export PS1="$mgn\u$rst $red\w$rst$ylw"'`__git_ps1`'"$rst\n$ "
}

export PROMPT_COMMAND=my_prompt