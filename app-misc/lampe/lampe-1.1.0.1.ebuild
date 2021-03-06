# ebuild by André Klausnitzer, CC0

EAPI=5

DESCRIPTION="interactive bash-script to control your Philips Hue lights"
HOMEPAGE="https://github.com/poinck/lampe"
SRC_URI="https://github.com/poinck/lampe/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="CC0"
SLOT="0"
KEYWORDS="amd64 arm x86"
IUSE=""

RDEPEND="net-misc/curl
	sys-apps/sed
	=app-misc/JSON-sh-0.2.1"
DEPEND="${RDEPEND}"

src_install() {
	# default
	emake DESTDIR="${D}" install

}
