# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="NVIDIA Prime Render Offload configuration and utilities. Port from Archlinux"
HOMEPAGE="https://www.archlinux.org/packages/extra/any/nvidia-prime/"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S=${WORKDIR}

src_install() {
	insinto /usr/share/X11/xorg.conf.d
	doins "${FILESDIR}/nvidia-prime.conf"

	dobin "${FILESDIR}/prime-run"
}

