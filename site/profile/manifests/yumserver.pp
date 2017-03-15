class profile::yumserver {

  class { 'simp_apache':
    ssl => false,
  }

  class { 'simp::server::yum':
    trusted_nets => ['127.0.0.1','::1','172.28.128.0/24']
  }

}
