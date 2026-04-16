pkgname=resolvify
pkgver=1.0
pkgrel=4
pkgdesc="OBS → DaVinci Resolve DNxHR converter using FFmpeg"
arch=("any")
url="https://github.com/"
license=("GPL3")

depends=(
  "python"
  "tk"
  "ffmpeg"
)

optdepends=(
  "python-rich: CLI progress UI"
  "python-customtkinter: GUI support"
)

source=("resolvify")

sha256sums=("SKIP")

prepare() {
  # hard safety patch so broken versions never ship again
  sed -i 's/no_wrap=False//g' resolvify
}

package() {
  install -Dm755 resolvify "$pkgdir/usr/bin/resolvify"
}
