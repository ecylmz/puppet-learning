class example {
    file { "/tmp/foo":
        ensure => present,
        mode => 644,
        content => "doktor bu ne!",
        owner => ecylmz,
        group => ecylmz
    }
}
