# by André Klausnitzer, CC0
# $Header: /var/cvsroot/gentoo-x86/app-misc/lampe/lampe-0.9.1.ebuild,v 1.0 2015/05/28 06:50:29 poinck Exp $

EAPI=5

DESCRIPTION="interactive bash-script to control up to 9 Philips Hue lights"
HOMEPAGE="https://github.com/poinck/lampe"
SRC_URI="https://github.com/poinck/lampe/archive/${PV}.tar.gz"

LICENSE="CC0"
SLOT="0"
KEYWORDS="amd64 arm x86"
IUSE=""

RDEPEND="net-misc/curl
	sys-apps/sed
	sys-apps/grep"
DEPEND="${RDEPEND}"

src_install() {
	# default
	make install

}
