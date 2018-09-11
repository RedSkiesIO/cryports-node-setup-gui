# Contributor: James Kirby <james.kirby@atlascity.io>
# Maintainer: James Kirby <james.kirby@atlascity.io>

pkgname=opennode-setup-gui
pkgdesc="Setup GUI for node"
arch="x86 x86_64 armhf aarch64"
license="MIT"
depends="opennode-base"

source="https://cryports.host/archive/stable/node-setup-gui/268/node-setup-gui.tar.gz"
builddir="$srcdir"/node-setup-gui

prepare() {
    default_prepare
}

build() {
	cd "$builddir"
	npm install --only-prod
}

check() {
	cd "$builddir"
    # npm run test:unit
}

package() {
	mv "$builddir"/* /srv/
}
