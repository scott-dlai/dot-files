function vimg {
  if [[ $# -gt 0 ]]; then
    if [ -d $1 ]; then
      vimr --cwd $1
    else
      vimr $1
    fi
  else
    vimr
  fi
}
