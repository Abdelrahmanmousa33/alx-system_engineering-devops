#changes ssh confugration file 

file_line { '/etc/ssh/ssh_config':
  line  => '#   PasswordAuthentication yes',
  match => '#   PasswordAuthentication no',
}
file_line { 'etc/ssh/ssh_config':
  line  => '#   IdentityFile ~/.ssh/school',
  match => '#   IdentityFile ~/.ssh/school',
}
