### Puppet

## Dosyaların Konumu:

    /etc/puppet/manifests

## Ana Dosya:

    site.pp

- Client'larla iletişimi bu dosya yapıyor.

- `Node`'lar tanımlayarak makineye özel komutlar verilebilir.

- Eğer tüm makinelerde aynı işlem yapılmak isteniyorsa en alta `include class-ismi` yazılır.

## İmport Etme

`site.pp` dosyasının üst kısmına `import dosya-adı` yazılır. istenilen yerde 
`include class-ismi` yazarak çağırabiliriz.

## Kaynak

[http://docs.puppetlabs.com/references/stable/type.html](http://docs.puppetlabs.com/references/stable/type.html)
