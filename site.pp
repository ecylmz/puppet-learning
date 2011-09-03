# Create "/tmp/testfile" if it doesn't exist.

import "file-create/*"
import "package-install/*"
import "nginx/*"

class test_class {
    file { "/tmp/testfile":
        ensure => present,
	mode   => 600,
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
}
