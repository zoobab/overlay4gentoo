# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Fast and Secure Tunneling Daemon (fastd)"
HOMEPAGE="https://projects.universe-factory.net/projects/fastd/wiki"
SRC_URI="https://projects.universe-factory.net/attachments/download/81/${PN}-${PV}.tar.xz"

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
	dosbin fastd || die
	newman "${S}"/fastd.man fastd.8 || die
	dodoc "${S}"/{README,CHANGES} || die
}
