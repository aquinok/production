class motd ($set_motd = "WARNING: hiera data not set") {
  file { '/etc/motd':
    ensure  => file,
    content => $set_motd,
    mode    => '0644',
    owner   => root,
    group   => root,
  }
}
