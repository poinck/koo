# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# copied from overlay "flow"

EAPI=5

DESCRIPTION="Gajim plugin for XEP proposal: OMEMO Encryption"
HOMEPAGE="https://dev.gajim.org/gajim/gajim-plugins/wikis/OmemoGajimPlugin"

inherit git-r3
EGIT_REPO_URI="https://dev.gajim.org/gajim/gajim-plugins.git"

if [[ "${PV}" = "9999" ]] ; then
	KEYWORDS=""
else
	EGIT_COMMIT="c87041b524cbbd8512fa7eb720033d856548603f"
	KEYWORDS="~amd64"
fi

LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND="dev-python/python-axolotl
        dev-python/qrcode"
RDEPEND="${DEPEND}"

src_install() {
	local PLUGIN_DIR="/usr/share/gajim/plugins"
	local OMEMO_PLUGIN_DIR="${PLUGIN_DIR}/omemo"
	dodir "${PLUGIN_DIR}"
	dodir "${OMEMO_PLUGIN_DIR}"
	cp -pPR "${S}"/omemo/* "${D}/${OMEMO_PLUGIN_DIR}" || die "Installing files failed"
}
