# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

KDE_HANDBOOK=true
KDE_SELINUX_MODULE="games"
EGIT_BRANCH="frameworks"
inherit kde5

DESCRIPTION="Mahjongg game by KDE"
HOMEPAGE="
	https://www.kde.org/applications/games/kmahjongg/
	https://games.kde.org/game.php?game=kmahjongg
"
KEYWORDS=""
IUSE=""

DEPEND="
	$(add_frameworks_dep kcompletion)
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kconfigwidgets)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep kdbusaddons)
	$(add_frameworks_dep kdelibs4support)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kwidgetsaddons)
	$(add_frameworks_dep kxmlgui)
	$(add_kdeapps_dep libkdegames)
	$(add_kdeapps_dep libkmahjongg)
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
"

RDEPEND="${DEPEND}"
