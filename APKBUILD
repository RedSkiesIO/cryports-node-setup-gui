# Contributor: James Kirby <james.kirby@atlascity.io>
# Maintainer: James Kirby <james.kirby@atlascity.io>

pkgname=opennode-setup-gui
pkgdesc="Setup GUI for node"
pkgver=0.0.1
pkgrel=0
arch="x86 x86_64 armhf aarch64"
license="MIT"
depends="opennode-base"
url="https://atlascity.io/"

source="https://cryports.host/archive/stable/node-setup-gui/268/node-setup-gui.tar.gz"
builddir="$srcdir"/dist

prepare() {
    default_prepare
}

build() {
    sudo mkdir -p /setup/gui
	sudo mv $builddir/* /setup/gui
}

package() {
	mkdir -p "$pkgdir"
}
