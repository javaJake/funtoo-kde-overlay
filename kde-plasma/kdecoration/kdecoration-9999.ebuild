# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

KDE_TEST="forceoptional"
VIRTUALX_REQUIRED="test"
inherit kde5

DESCRIPTION="Plugin based library to create window decorations"
KEYWORDS=""
IUSE=""

DEPEND="dev-qt/qtgui:5"
RDEPEND="${DEPEND}"
