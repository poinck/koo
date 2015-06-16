# by André Klausnitzer, CC0

EAPI=5

EGIT_REPO_URI="git://github.com/poinck/lampe.git"
inherit git-r3

DESCRIPTION="interactive bash-script to control up to 9 Philips Hue lights"
HOMEPAGE="https://github.com/poinck/lampe"
SRC_URI=""

LICENSE="CC0"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="net-misc/curl
	sys-apps/sed
	app-misc/JSON-sh"
DEPEND="${RDEPEND}"

src_install() {
	# default
	emake DESTDIR="${D}" install

}
