# ebuild by André Klausnitzer, CC0

EAPI=5

EGIT_REPO_URI="git://github.com/dominictarr/JSON.sh.git"
inherit git-r3

DESCRIPTION="a pipeable JSON parser written in bash"
HOMEPAGE="https://github.com/dominictarr/JSON.sh"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="virtual/awk"
DEPEND="${RDEPEND}"
	
S="${WORKDIR}/JSON.sh-master"

src_install() {
	dobin JSON.sh
	dodoc README.md
}
