class transmission::service {

	service { 'transmission-daemon':
		ensure     => running,
		hasstatus  => true,
		hasrestart => true,
		enable     => true,
		require    => Class['transmission::package'],
		subscribe  => Class['transmission::config']
	}
}
