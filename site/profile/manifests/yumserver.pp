class profile::yumserver {

  class { 'apache':
    default_vhost => false,
  }

  apache::vhost { 'default':
    port          => '80',
    docroot       => '/var/www/html',
    docroot_owner => 'www-data',
    docroot_group => 'www-data',
  }

  class { 'simp::server::yum':
    trusted_nets => ['127.0.0.1','::1','172.28.128.0/24']
  }

}
