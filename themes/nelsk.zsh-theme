# A fork of miloshadzic theme
# Yay! High voltage and arrows!

function _git_sep(){
	if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
		echo "|"
	fi
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}+%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{$fg[red]%}{> %{$reset_color%}%{$fg[cyan]%}${:-%m}:%3~%{$reset_color%}%{$fg[red]%}$(_git_sep)%{$reset_color%}$(git_prompt_info)%{$reset_color%}%{$fg[red]%} <}%{$reset_color%}
%{$fg[cyan]%}#%{$reset_color%} '
