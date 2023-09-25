#A manfiest that kills a process
exec {'killmenow':
  command  => 'pkill killmwnow',
  provider => 'shell',
  returns  => [0, 1],
}
