class profile::simp {

  class { 'simp::yum::repo::internet_simp_dependencies':
    simp_release_slug => '6_X',
  }

  class { 'simp':
    sssd          => false,
    mail_server   => false,
    pam           => true,
  }

  include aide::set_schedule

  class { 'openscap':
    enable_schedule => true,
  }

}
