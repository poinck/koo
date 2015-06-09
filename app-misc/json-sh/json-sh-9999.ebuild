# ebuild by André Klausnitzer, CC0

EAPI=5

DESCRIPTION="a pipeable JSON parser written in bash"
HOMEPAGE="https://github.com/dominictarr/JSON.sh"
SRC_URI="https://github.com/dominictarr/JSON.sh/archive/master.zip -> ${P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="virtual/awk
	sys-apps/grep"
DEPEND="${RDEPEND}
	app-arch/unzip"

src_install() {
	# emake DESTDIR="${D}" install
	install --mode=755 -d ${D}/usr/bin
	install --mode=755 JSON.sh ${D}/usr/bin
}
