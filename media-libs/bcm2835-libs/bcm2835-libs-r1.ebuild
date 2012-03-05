# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Proprietary libraries for the Broadcom BCM2835 SoC (including the Raspberry Pi computer)"
HOMEPAGE="http://www.broadcom.com/ http://www.raspberrypi.org/"
SRC_URI="http://subwire.github.com/raspberry-pi-overlay/distfiles/bcm2835-libs-$PV.tar.gz"
SLOT="0"
KEYWORDS="arm"
# TODO: Make the samples actually optional
#IUSE="src samples"
IUSE=""
DEPEND="=media-libs/mesa(-egl -openvg -gles)"
RDEPEND="${DEPEND}"
RESTRICT="mirror strip test"
 
src_unpack() {
   unpack ${A}
   mkdir etc etc/env.d
   cp ${FILESDIR}/etc-env.d-02bcm2835-libs etc/env.d/
} 

src_install() {
   insinto /
   doins -r opt etc
}
