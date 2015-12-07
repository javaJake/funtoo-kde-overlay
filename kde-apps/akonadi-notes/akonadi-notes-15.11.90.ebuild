# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

KDE_TEST=true
KMNAME=kdepimlibs
inherit kde5

DESCRIPTION="Library for akonadi notes integration"
KEYWORDS="~amd64 ~x86"
LICENSE="LGPL-2.1"
IUSE=""

# some akonadi tests time out, that probably needs more work as it's ~700 tests
RESTRICT="test"

COMMON_DEPEND="
	$(add_frameworks_dep ki18n)
	$(add_kdeapps_dep kmime)
	dev-qt/qtgui:5
	dev-qt/qtxml:5
"
DEPEND="${COMMON_DEPEND}
	$(add_kdeapps_dep libakonadi)
	sys-devel/gettext
"
RDEPEND="${COMMON_DEPEND}
	!kde-apps/kdepimlibs
	!kde-base/kdepimlibs:4
"

S="${WORKDIR}/${P}/${PN}"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_build test TESTING)
	)
	kde5_src_configure
}
