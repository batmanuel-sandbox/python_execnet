# Eupspkg config file. Source by 'eupspkg'
TAP_PACKAGE=1

build() {
  mv .git .git-save
  default_build
  mv .git-save .git
}

install() {
  mv .git .git-save
  default_install
  mv .git-save .git
}
