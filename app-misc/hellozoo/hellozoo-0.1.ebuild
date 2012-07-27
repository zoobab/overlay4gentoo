# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils

DESCRIPTION="zoobab hello world for haxogreen"
HOMEPAGE="http://www.zoobab.com/haxogreen-gentoo-ebuild"
SRC_URI="https://github.com/zoobab/overlay4gentoo/blob/master/src/hellozoo-0.1.tgz"

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
	emake install || die
}
