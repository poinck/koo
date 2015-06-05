# by André Klausnitzer, CC0

EAPI=5

DESCRIPTION="interactive bash-script to control up to 9 Philips Hue lights"
HOMEPAGE="https://github.com/poinck/lampe"
SRC_URI="https://github.com/poinck/lampe/archive/master.zip -> ${P}.zip"

LICENSE="CC0"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="net-misc/curl
	sys-apps/sed
	sys-apps/grep"
DEPEND="${RDEPEND}
	app-arch/unzip"

src_install() {
	# default
	emake DESTDIR="${D}" install

}
