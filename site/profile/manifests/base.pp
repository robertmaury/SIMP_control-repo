class profile::base {

  class simp {'simp': 
    stock_sssd => false,
    sssd       => false,
    scenario   => 'simp',
  }

  class simp_options::dns { 'dns':
    servers => ['8.8.8.8'],
  }

}
