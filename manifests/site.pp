import "file-create/*"
import "package-install/*"
# import "nginx/*"
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
#    include nginx-run
    include configuration
    class { "nginx":
        enable => false,
        ensure => stopped,
        domain => "foo.bil.omu.edu.tr"
    }

}
