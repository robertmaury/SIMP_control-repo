class profile::simp {

  class { 'simp':
    sssd => false,
  }

}
