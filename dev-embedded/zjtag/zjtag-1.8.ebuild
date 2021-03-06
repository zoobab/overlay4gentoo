# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils

DESCRIPTION="zJTAG is an EJTAG Debrick Utility based on BrJTAG"
HOMEPAGE="http://zjtag.sourceforge.net"
SRC_URI="http://filez.zoobab.com/${PN}/${P}.zip
		http://wiki.openwrt.org/_media/media/doc/hardware/${P}.zip
		http://ftp.jaist.ac.jp/pub/sourceforge/z/project/zj/zjtag/v${PV}/${P}.zip"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="
	dev-embedded/libftd2xx
	dev-libs/libusb
"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${PN}.source_${PV}/src

src_prepare() {
	cd "${S}"
    epatch ${FILESDIR}/${P}-simpler-makefile.patch || die
}

src_compile() {
	ebegin "Compilation started"
		emake || die
	eend
}

src_install() {
	ebegin "Installing in /usr/sbin"
	exeinto /usr/sbin
		newexe zjtag zjtag || die
	eend
}
