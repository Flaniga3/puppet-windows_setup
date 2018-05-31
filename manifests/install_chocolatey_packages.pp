# Installs basic utilities via chocolatey
class windows_setup::install_chocolatey_packages inherits windows_setup {
  require chocolatey

  Package {
    provider => chocolatey
  }

  $chocolatey_package_list = {
    'virtualbox' => {
      ensure = $windows_setup::ensure_virtualbox
    },
    'googlechrome' => {
      ensure => $windows_setup::ensure_googlechrome
    },
    'vagrant' => {
      ensure => $windows_setup::ensure_vagrant
    },
    'docker' => {
      ensure => $windows_setup::ensure_docker
    },
    'vscode' => {
      ensure => $windows_setup::ensure_vscode
    },
    'git' => {
      ensure => $windows_setup::ensure_git
    },
    'firefox' => {
      ensure => $windows_setup::ensure_firefox
    },
    'visualstudio2017community' => {
      ensure => $windows_setup::ensure_vscommunity
    }
  }

  create_resources(package, $chocolatey_package_list)
}
