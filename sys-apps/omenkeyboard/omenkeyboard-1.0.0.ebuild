EAPI=7

DESCRIPTION="OMEN keyboard tool"
HOMEPAGE="https://github.com/player999/encoder_keyboard"
SRC_URI="https://github.com/player999/encoder_keyboard/archive/v1.0.0.zip"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	default
	mv "encoder_keyboard-1.0.0" "omenkeyboard-1.0.0"
}

src_install() {
	mkdir -p ${D}/usr/bin/
	mkdir -p ${D}/lib/udev/rules.d/
	/usr/bin/install ${WORKDIR}/omenkeyboard-1.0.0/encoder ${D}/usr/bin/encoder
	/usr/bin/install ${WORKDIR}/omenkeyboard-1.0.0/97-omen_encoder.rules ${D}/lib/udev/rules.d/97-omen_encoder.rules
}
