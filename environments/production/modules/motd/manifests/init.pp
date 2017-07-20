class motd ($set_motd = "default text") {
  file { '/etc/motd':
    ensure  => file,
    content => $set_motd,
    mode    => '0644,
  }
}
