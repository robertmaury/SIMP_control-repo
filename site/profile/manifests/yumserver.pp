class profile::yumserver {

  class { 'apache':
    ip      => '0.0.0.0',
    port    => '80',
    docroot => '/var/www/html'
  }


}
