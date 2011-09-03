import "file-create/*"
import "package-install/*"
import "nginx/*"
import "configuration/*"


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
    include nginx-run
    include configuration
}
