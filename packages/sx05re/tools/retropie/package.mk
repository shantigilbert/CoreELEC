################################################################################
#      This file is part of emuelec
#      no copyright, do as you please :)
################################################################################

PKG_NAME="retropie"
PKG_VERSION=""
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_SITE=""
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain fbterm"
PKG_SECTION="emuelec"
PKG_SHORTDESC="Retropie scripts"
PKG_LONGDESC="Retropie scripts adapted for emuELEC"
PKG_IS_ADDON="no"
PKG_AUTORECONF="no"
PKG_TOOLCHAIN="manual"

make_target() {
   
  mkdir -p $INSTALL/usr/config/retropie/
    cp -rf $PKG_DIR/retropie/* $INSTALL/usr/config/retropie/
    ln -sf /storage/.config/retropie $INSTALL/retropie
    #ln -sf /storage/roms/games/yquake2/baseq2/pak1.pak $INSTALL/usr/share/games/quake2/baseq2/pak1.pak
}
