# .bashrc
# testing
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
#if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
#then
#   PATH="$HOME/.local/bin:$HOME/bin:$PATH"
#fi
#export PATH

# custom prompt
parse_git_branch() {
	git branch 2> /dev/null |sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \w $ "

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ll="ls -la"
alias gs="git status"
alias ga="git add"
alias gc="git commit"

