class transmission(
	$package_name = params_lookup( 'package_name' ),
	$enabled       = params_lookup( 'enabled' )
  ) inherits transmission::params {

  	$ensure = $enabled ? {
  		true => present,
  		false => absent
  	}

	include transmission::package, transmission::config, transmission::service
}
