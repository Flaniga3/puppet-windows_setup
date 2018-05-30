# Installs key software for windows servers
class windows_setup () {
  require chocolatey

  $chocolatey_package_list = [
    'virtualbox',
    'googlechrome',
    'vagrant',
    'docker',
    'vscode',
    'git',
    'firefox',
    'visualstudio2017community'
  ]

  package {$chocolatey_package_list:
    provider => chocolatey
  }
}
