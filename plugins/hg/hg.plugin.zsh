# Aliases
alias hst='hg status'
alias hl='hg pull'
alias hp='hg push'
alias hd='hg diff'
alias ha='hg add .'
alias hc='hg commit'
alias hb='hg branch'
alias hlo='hg log'

function hgcatc () {
  cat .hg/hgrc
}