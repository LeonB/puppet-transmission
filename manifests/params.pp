# Class: transmission::params
#
# This class defines default parameters used by the main module class transmission
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to transmission class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class transmission::params {

	### Application related parameters

	$package_name = $::operatingsystem ? {
		default => 'transmission-daemon'
	}

	$enabled = true

}
