class transmission::package {

  package  { $transmission::package_name:
    ensure => $transmission::ensure,
    # require => Apt::Ppa['ppa:transmissionbt/ppa'],
  }

  # The Transmission ppa
  # apt::ppa { 'ppa:transmissionbt/ppa': }
}
