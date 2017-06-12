class profile::simp {

  class { 'simp::yum::repo::internet_simp_dependencies':
    simp_release_slug => '6',
  }

  class { 'simp':
    sssd          => false,
    mail_server   => false,
    rsync_stunnel => false,
  }

}
