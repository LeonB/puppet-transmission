class transmission::config {

    nginx::vhost::snippet { 'transmission':
        vhost   => 'default',
        content => template('transmission/nginx_vhost.erb'),
        ensure  => $transmission::ensure
     }

    file { '/etc/default/transmission-daemon':
        source  => 'puppet:///modules/transmission/default/transmission-daemon',
        owner   => root,
        group   => root,
        mode    => 0644,
        require => Class['transmission::package'],
        notify  => Class['transmission::service']
    }

    file { '/etc/transmission-daemon/settings.json':
        source  => 'puppet:///modules/transmission/settings.json',
        owner   => debian-transmission,
        group   => debian-transmission,
        mode    => 0600,
        require => Class['transmission::package'],
        notify  => Class['transmission::service']
    }

     # How to add `debian-transmission` group to user `leon`?
}