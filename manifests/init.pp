# Installs key software for windows servers
class windows_setup () {
  require chocolatey

  $package_list = [
    'virtualbox',
    'googlechrome',
    'vagrant',
    'docker',
    'vscode',
    'git'
  ]

  package {$package_list:
    provider => chocolatey
  }
}
