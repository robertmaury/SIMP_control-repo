class profile::yumserver {

  class { 'apache':
    default_vhost => false,
  }

  apache::vhost { 'manage':
    port    => '443',
    docroot => '/var/www/html',
    ssl     => true,
  }

}
