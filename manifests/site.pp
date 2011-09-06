import "file-create/*"
import "package-install/*"
import "configuration/*"
import "nginx"

class test_class {
    file { "/tmp/testfile":
        ensure => present,
	mode   => 644,
	owner  => root,
	group  => root
    }
}

# tell puppet on which client to run the class
node car {
    include test_class
    include example
    include install
    include configuration
    class { "nginx":
        enable => true,
        ensure => true,
        domain => "foo.bil.omu.edu.tr"
    }
    class { "wordpress":
        wpdir  => "/opt/wp",
        dbuser => "foo",
        dbname => "bar",
        dbpass => "baz"
    }
}
