#changes ssh confugration file 
file { '/etc/ssh/ssh_config':
  ensure => present,
}

file_line { 'turn off password auth':
  line  => '#   PasswordAuthentication no',
  match => '#   PasswordAuthentication',
}

file_line { 'etc/ssh/ssh_config':
  line  => '#   IdentityFile ~/.ssh/school',
  match => '#   IdentityFile',
}
