# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# 
# TODO:
# 1. /etc/malamute default config(s)
# 2. init.d
# 3. systemd

EAPI=4

inherit git-2 autotools

DESCRIPTION="The ZeroMQ Enterprise Messaging Broker"
HOMEPAGE="https://github.com/zeromq/malamute"
SRC_URI=""

EGIT_REPO_URI="https://github.com/zeromq/malamute.git"
EGIT_PROJECT="malamute"

LICENSE="MPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="net-libs/czmq"
RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf || die
	eautomake || die
}

src_compile() {
	emake || die
}

src_install() {
	exeinto /usr/sbin
		newexe src/.libs/malamute malamute || die
		newexe src/.libs/mshell mshell || die
	eend
}
