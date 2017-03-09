class profile::base {

  class { 'simp': 
    stock_sssd => false,
    sssd       => false,
    scenario   => 'simp',
  }

  class { 'simp_options::dns':
    servers => ['8.8.8.8'],
  }

}
