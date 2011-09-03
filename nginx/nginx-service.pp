# nginx service

class nginx-run {
    service { "nginx":
        ensure => stopped # or running
    }
}
