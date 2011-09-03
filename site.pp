# Create "/tmp/testfile" if it doesn't exist.

import "example/*"

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
}
