class profile::base {

  class { 'aide':
    enable => true,
  }

  class { 'simp_options':
    trusted_nets => ['127.0.0.1', '::1','172.28.128.0/24','10.0.2.0/24'],
  }

  class { 'simp::yum':
    servers => ['172.28.128.9'],
  }

  class { 'simp': 
    stock_sssd => false,
    sssd       => false,
    scenario   => 'simp',
  }

  class { 'openscap':
    enable_schedule => true,
  }

}
