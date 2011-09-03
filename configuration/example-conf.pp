# örnek konfigurasyon
# dosya yolu : /etc/puppet/files/
# izinler verilmeli :"  /etc/puppet/fileserver.conf " "allow *" yapıldı şimdilik.

class configuration {
    file { "/tmp/konfigurasyon.txt":
        source => "puppet:///files/masterkonfigurasyon.txt"
    }
}
