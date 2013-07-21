# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Babeld routing daemon"
HOMEPAGE="Babel a loop-avoiding distance-vector routing protocol"
SRC_URI="http://www.pps.univ-paris-diderot.fr/~jch/software/files/babeld-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	emake || die
}

src_install() {
	dosbin babeld || die
	newman "${S}"/babeld.man babeld.8 || die
	dodoc "${S}"/{README,CHANGES} || die
}
