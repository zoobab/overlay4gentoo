# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils

DESCRIPTION="zoobab hello world for haxogreen"
HOMEPAGE="http://www.zoobab.com/haxogreen-gentoo-ebuild"
SRC_URI="http://www.zoobab.com/local--files/haxogreen-gentoo-ebuild/hellozoo-0.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
src_compile() {
	ebegin "Starting compilation..."
		emake || die
	eend "Compilation finished..."
}

src_install() {
	ebegin "Installing..."
	exeinto /usr/sbin
		doexe hellozoo || die
	eend "Installation finished"
}
