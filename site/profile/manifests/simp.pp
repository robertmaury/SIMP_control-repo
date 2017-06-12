class profile::simp {

  class { 'simp':
    sssd          => false,
    mail_server   => false,
    rsync_stunnel => false,
  }

}
