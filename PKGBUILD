# Maintainer: Krashnik

pkgname=kvmscreengrabber
_pkgver=1.0.0.0
pkgdesc="Screen Grabber for Pi-KVM"
arch=(any)
url="https://instarlab.github.io/KVM-Screen-Grabber/"
license=(MIT)
source=("https://instarlab.github.io/KVM-Screen-Grabber/${pkgname}-${pkgver}.tar.xz"{,.asc})
sha512sums=("SKIP")

package() {
  echo "Installing KVM Screen Grabber"
  mkdir -p "${pkgdir}/usr/bin"
  cp "${srcdir}" "${pkgdir}/usr/bin/screengrabber"
  chmod +x "${pkgdir}/usr/bin/screengrabber"
}
