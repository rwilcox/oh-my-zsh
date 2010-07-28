# get the name of the branch we are on
function hg_prompt_info() {
  ref=$(hg branch 2> /dev/null) || return
  echo "$ZSH_THEME_HG_PROMPT_PREFIX${ref#refs/heads/}$(parse_hg_dirty)$ZSH_THEME_HG_PROMPT_SUFFIX"
}

parse_hg_dirty () {
  if [[ -n $(hg status 2> /dev/null) ]]; then
    echo "$ZSH_THEME_HG_PROMPT_DIRTY"
  else
    echo "$ZSH_THEME_HG_PROMPT_CLEAN"
  fi
}
