# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils

DESCRIPTION="uwfirmforce"
HOMEPAGE="http://uwfirmforce.wikidot.com"
SRC_URI="http://www.zoobab.com/local--files/haxogreen-gentoo-ebuild/${PN}-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
src_compile() {
	ebegin "Compilation started"
	emake || die
	eend
}

src_install() {
	ebegin "Installing in /usr/sbin"
	exeinto /usr/sbin
		newexe UWfirmforce uwfirmforce || die
	eend
}
