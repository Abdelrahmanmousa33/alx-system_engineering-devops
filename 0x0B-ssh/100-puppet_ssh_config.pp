#!/usr/bin/env bash
#changes ssh confugration file 
file { '/etc/ssh/ssh_config':
  ensure => present,
}

file_line { 'turn off password auth':
  path  => '/etc/ssh/ssh_config',
  line  => '#   PasswordAuthentication no',
  match => '#   PasswordAuthentication',
}

file_line { 'change identity file':
  path  => '/etc/ssh/ssh_config',
  line  => '#   IdentityFile ~/.ssh/school',
  match => '#   IdentityFile',
}
