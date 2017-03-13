class profile::base {

  class { 'simp_options::puppet':
    server => 'puppet',
    ca     => 'puppet',
  }

  class { 'simp_options::dns':
    servers => '10.0.2.3',
  }

  class { 'simp_options':
    auditd       => true,
    clamav       => true,
    firewall     => true,
    ipsec        => true,
    kerberos     => true,
    logrotate    => true,
    pam          => true,
    selinux      => true,
    syslog       => true,
    trusted_nets => ['127.0.0.1', '::1','172.28.128.0/24','10.0.2.0/24'],
  }

  class { 'simp': 
    stock_sssd => false,
    sssd       => false,
    scenario   => 'simp',
  }

}
