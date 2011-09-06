class wordpress ($wpdir, $dbname, $dbuser, $dbpass ) {

	file {
		"${wpdir}":
			ensure  => directory,
			recurse => true,
			source  => "puppet:///wordpress/wp";

		"${wpdir}/wp-config.php":
			ensure  => file,
			content => template("wordpress/wp-config.php.erb");

		"${wpdir}/wp-content/uploads":
			ensure  => directory,
			mode    => 0755,
			owner   => www-data,
			group   => www-data
	}
}
