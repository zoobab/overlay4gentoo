# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2 autotools

DESCRIPTION="The ZeroMQ Enterprise Messaging Broker"
HOMEPAGE="https://github.com/linux-sunxi/sunxi-tools"
SRC_URI=""

EGIT_REPO_URI="https://github.com/zeromq/malamute.git"
EGIT_PROJECT="malamute"

LICENSE="MPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf || die
	eautomake || die
}

src_compile() {
	ebegin "Compilation started"
		emake || die
	eend
}

src_install() {
	ebegin "Installing in /usr/sbin"
	exeinto /usr/sbin
		newexe src/.libs/malamute malamute || die
		newexe src/.libs/mshell mshell || die
	eend
}
