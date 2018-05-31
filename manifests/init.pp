# Installs key software for windows servers
class windows_setup (
  $ensure_virtualbox,
  $ensure_googlechrome,
  $ensure_vagrant,
  $ensure_docker,
  $ensure_vscode,
  $ensure_git,
  $ensure_firefox,
  $ensure_vscommunity,
) {
  include install_chocolatey_packages
}
