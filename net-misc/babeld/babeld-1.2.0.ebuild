# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Babeld routing daemon"
HOMEPAGE="http://babeld.fr"
SRC_URI="http://172.20.0.1:8000/babeld-1.2.0.tar.gz"

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
	einstall || die
}
