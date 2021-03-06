# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-backup/vzdump/vzdump-1.2.ebuild,v 1.3 2013/07/24 11:56:43 pva Exp $

EAPI="2"

inherit eutils

DESCRIPTION="A utility to make consistent snapshots of running OpenVZ containers."
HOMEPAGE="http://pve.proxmox.com/wiki/VZDump"
SRC_URI="http://www.proxmox.com/cms_proxmox/cms/upload/vzdump/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="dev-lang/perl
	dev-perl/LockFile-Simple
	virtual/perl-Getopt-Long
	sys-cluster/vzctl
	net-misc/rsync
	app-misc/cstream
	virtual/mta
	sys-fs/lvm2"

src_prepare() {
	ebegin "Patching LVM bug"
		cd "${S}"
		epatch ${FILESDIR}/${P}-lvm-fix.patch
	eend
}

src_compile() {
	:;
}

src_install() {
	local installvendorlib
	eval "$(perl -V:installvendorlib )"
	make PERLLIBDIR="${installvendorlib}/PVE" DESTDIR="${D}" install || die "make install failed"
	dodoc ChangeLog TODO
}
