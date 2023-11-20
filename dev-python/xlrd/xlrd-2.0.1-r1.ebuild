# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} pypy3 )

inherit distutils-r1

DESCRIPTION="Library to extract data from Microsoft Excel spreadsheets"
HOMEPAGE="
	https://www.python-excel.org/
	https://github.com/python-excel/xlrd/
	https://pypi.org/project/xlrd/
"
SRC_URI="
	https://github.com/python-excel/xlrd/archive/${PV}.tar.gz
		-> ${P}.gh.tar.gz
"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~ia64 ppc ppc64 ~riscv ~s390 ~sparc x86 ~amd64-linux ~x86-linux ~arm64-macos ~x64-macos"

distutils_enable_tests pytest
