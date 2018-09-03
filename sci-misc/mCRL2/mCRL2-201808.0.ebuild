# Copyright 2018 Henk van der Laan
# Distributed under the terms of the GNU General Public License v2 or later

EAPI=6

inherit cmake-utils gnome2-utils

DESCRIPTION="A formal specification language with an associated toolset"
HOMEPAGE="https://mcrl2.org"
SRC_URI="https://www.mcrl2.org/download/release/mcrl2-${PV}.tar.gz"

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-libs/boost-1.48.0
	>=dev-qt/qtcore-5.5
	>=dev-qt/qtgui-5.5
	>=dev-qt/qtopengl-5.5
	>=dev-qt/qtwidgets-5.5
	>=dev-qt/qtxml-5.5
	virtual/opengl"
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_configure() {
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install
}

pkg_postinst() {
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
