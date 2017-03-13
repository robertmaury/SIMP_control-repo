class profile::base {

  class { 'simp': 
    stock_sssd => false,
    sssd       => false,
    scenario   => 'simp',
  }

  class { 'simp_options::dns':
    trusted_nets => ['127.0.0.1', '::1','172.28.128.0/24',10.0.2.0/24'],
    servers => '10.0.2.3',
  }

}
