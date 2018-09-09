# Contributor: James Kirby <james.kirby@atlascity.io>
# Maintainer: James Kirby <james.kirby@atlascity.io>

pkgname=opennode-setup-gui
pkgdesc="Setup GUI for node"
arch="x86 x86_64 armhf aarch64"
license="MIT"
depends="opennode-base"

source="git@gitlab.engr.atlas:cryptos/node-setup-gui.git"

builddir="$srcdir"/node-setup-gui

build() {
	cd "$builddir"
	npm install
}

package() {
	cd "$builddir"
	npm install
	mv "$builddir" /srv/
}
