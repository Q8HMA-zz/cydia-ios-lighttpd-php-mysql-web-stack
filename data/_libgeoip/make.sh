echo PKG_ROOT = "${PKG_ROOT}"
echo PKG_WORK = "${PKG_WORK}"
echo PKG_DATA = "${PKG_DATA}"
echo PKG_DEST = "${PKG_DEST}"
echo PKG_TARG = "${PKG_TARG}"

pkg:setup
#autoconf-2.69 
pkg:configure ac_cv_func_malloc_0_nonnull=yes ac_cv_func_realloc_0_nonnull=yes --prefix=/usr/local --sysconfdir=/etc
make
pkg:install  
#make install

pkg: mkdir -p /usr/local/share/GeoIP
cp data/GeoIP.dat "${PKG_DEST}"/usr/local/share/GeoIP
