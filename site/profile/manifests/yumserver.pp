class profile::yumserver {

  class { 'apache':
    docroot => '/var/www/html'
  }


}
