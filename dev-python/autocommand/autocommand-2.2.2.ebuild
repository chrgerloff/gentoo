# Copyright 2022-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} pypy3 pypy3_11 )

inherit distutils-r1

DESCRIPTION="Library to create a command-line program from a function"
HOMEPAGE="
	https://github.com/Lucretiel/autocommand/
	https://pypi.org/project/autocommand/
"
SRC_URI="
	https://github.com/Lucretiel/autocommand/archive/${PV}.tar.gz
		-> ${P}.gh.tar.gz
"

LICENSE="LGPL-3+"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ~loong ~m68k ~mips ppc ppc64 ~riscv ~s390 sparc x86 ~amd64-linux ~x86-linux ~arm64-macos ~ppc-macos ~x64-macos ~x64-solaris"

PATCHES=(
	"${FILESDIR}"/${PN}-2.2.2-setuptools-license.patch
)

distutils_enable_tests pytest
