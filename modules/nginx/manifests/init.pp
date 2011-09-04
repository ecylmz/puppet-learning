class nginx ($domain = undef, $enable = true, $ensure = running) {

	$conf_file = "/etc/nginx/sites-available/${domain}"

	package { "nginx":
		ensure => latest
	}

	file { "${conf_file}":
		source => "puppet:///nginx/${domain}"
	}

	service { "nginx":
		ensure    => $ensure,
		subscribe => [Package["nginx"], File["${conf_file}"]]
	}
}
