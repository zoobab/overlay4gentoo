# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="pcapdsipdump is a tool for recording voip calls"
HOMEPAGE="http://sf.net/pcapsipdump"
SRC_URI="http://freefr.dl.sourceforge.net/project/pcapsipdump/pcapsipdump/0.2/${PN}-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="
net-libs/libpcap
"
RDEPEND="${DEPEND}"

src_compile() {
	emake || die
}

src_installl() {
	dosbin pcapsipdump || die
}
