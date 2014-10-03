# Maintainer: Alexey Baranov <a.baranov@office.ngs.ru>

pkgname=etcd-heaverd-ng
pkgver=1
pkgrel=1
pkgdesc="Etcd services and configs for heaverd-ng"
arch=('x86_64')
license=('unknown')
depends=('etcd')
install='install.sh'
md5sums=() #generate with 'makepkg -g'

package() {
	mkdir -p $pkgdir/etc/conf.d/
	mkdir -p $pkgdir/usr/lib/systemd/system/

	cp $pkgdir/../../etcd-heaverd-ng $pkgdir/etc/conf.d/
	cp $pkgdir/../../etcd-discovery $pkgdir/etc/conf.d/

	cp $pkgdir/../../etcd-heaverd-ng.service $pkgdir/usr/lib/systemd/system/
	cp $pkgdir/../../etcd-discovery.service $pkgdir/usr/lib/systemd/system/
}
