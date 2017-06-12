class profile::simp {

  class { 'simp::yum::repo::internet_simp_dependencies': }

  class { 'simp':
    sssd          => false,
    mail_server   => false,
    rsync_stunnel => false,
  }

}
