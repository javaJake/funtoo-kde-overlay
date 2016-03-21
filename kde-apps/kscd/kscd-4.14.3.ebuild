# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit kde4-base

DESCRIPTION="KDE CD player"
HOMEPAGE="https://www.kde.org/applications/multimedia/kscd/"
KEYWORDS="amd64 ~arm ppc ppc64 x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	$(add_kdeapps_dep libkcddb)
	media-libs/musicbrainz:3
"
RDEPEND="${DEPEND}"
