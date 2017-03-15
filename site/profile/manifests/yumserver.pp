class profile::yumserver {

  class { 'apache':
    ip      => '0.0.0.0',
    docroot => '/var/www/html'
  }


}
