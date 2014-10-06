# Maintainer: Alexey Baranov <a.baranov@office.ngs.ru>

pkgname=etcd-heaverd-ng
pkgver=3617cf
pkgrel=1
pkgdesc="etcd services and configs for heaverd-ng"
arch=('x86_64')
license=('unknown')
depends=('etcd')
install='install.sh'
md5sums=() #generate with 'makepkg -g'

pkgver() {
	cd $srcdir/../
	VERSION=`git show-ref | grep master | head -n1 | cut -c 1-6`
	printf $VERSION
}

package() {
	mkdir -p $pkgdir/etc/conf.d/
	mkdir -p $pkgdir/usr/lib/systemd/system/

	cp $pkgdir/../../etcd-heaverd-ng $pkgdir/etc/conf.d/
	cp $pkgdir/../../etcd-heaverd-ng-discovery $pkgdir/etc/conf.d/

	cp $pkgdir/../../etcd-heaverd-ng.service $pkgdir/usr/lib/systemd/system/
	cp $pkgdir/../../etcd-heaverd-ng-discovery.service $pkgdir/usr/lib/systemd/system/
}
