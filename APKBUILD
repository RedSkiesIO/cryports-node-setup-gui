# Contributor: James Kirby <james.kirby@atlascity.io>
# Maintainer: James Kirby <james.kirby@atlascity.io>

pkgname=opennode-setup-gui
pkgdesc="Setup GUI for node"
arch="x86 x86_64 armhf aarch64"
license="MIT"
depends="opennode-base"

source="git@gitlab.engr.atlas:cryptos/node-setup-gui.git"
builddir="$srcdir"/node-setup-gui

_giturl="https://github.com/agrover/configshell-fb"
_gittag="v$_pkgver"


snapshot() {
	mkdir -p "$srcdir"
	cd "${SRCDEST:-$srcdir}"
	if ! [ -d $_pkgname-fb.git ]; then
		git clone --bare  $_giturl || return 1
		cd $_pkgname-fb.git
	else
		cd $_pkgname-fb.git
		git fetch || return 1
	fi
	
	git archive --prefix=$_pkgname/ -o "$SRCDEST"/$_pkgname-$_pkgver.tar.gz $_gittag
	scp "$SRCDEST"/$_pkgname-$_pkgver.tar.gz dev.alpinelinux.org:/archive/$_pkgname/
}

build() {
	cd "$builddir"
	npm install
}

package() {
	cd "$builddir"
	npm install
	mv "$builddir" /srv/
}
