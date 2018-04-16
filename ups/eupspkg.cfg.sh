# shellcheck shell=bash

# Eupspkg config file. Source by 'eupspkg'
# shellcheck disable=SC2034
TAP_PACKAGE=1

switcheroo() {
  local func=${1?func name is required}

  if [[ -e .git ]]; then
    mv .git .git-save
    $func
    mv .git-save .git
  else
    $func
  fi
}

build() {
  switcheroo default_build
}

install() {
  switcheroo default_install
}
