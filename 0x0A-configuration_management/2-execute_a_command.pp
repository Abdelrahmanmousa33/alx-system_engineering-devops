#A manfiest that kills a process
exec {'killmenow':
  command  => 'usr/bin/pkill killmwnow',
  provider => 'shell',
  returns  => [0, 1],
}
