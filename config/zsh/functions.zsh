function vimr {
  if [[ $# -gt 0 ]]; then
    if [ -d $1 ]; then
      /usr/local/bin/vimr --cwd $1
    else
      /usr/local/bin/vimr $1
    fi
  else
    /usr/local/bin/vimr
  fi
}
