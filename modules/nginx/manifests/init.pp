class nginx ($domain = undef, $enable = true, $ensure = running) {

	$conf_file        = "/etc/nginx/sites-available/${domain}"
	$conf_file_enabled = "/etc/nginx/sites-enabled/${domain}"

	package { "nginx":
		ensure => latest
	}

	file { "${conf_file}":
		source => "puppet:///nginx/${domain}"
	}

	file { "${conf_file_enabled}":
		ensure => link,
		target => "${conf_file}"
	}

	service { "nginx":
		ensure    => $ensure,
		subscribe => [Package["nginx"], File["${conf_file_enable}"]]
	}
}
