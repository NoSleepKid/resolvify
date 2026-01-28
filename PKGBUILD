pkgname=resolvify-git
pkgver=36760f5
pkgrel=1
pkgdesc="Linux-only OBS to DaVinci Resolve video converter (CLI + GUI, with menu entry)"
arch=('any')
url="https://github.com/NoSleepKid/resolvify"
license=('MIT')

depends=(
  'python'
  'tk'          # tkinter support on Arch
  'ffmpeg'
  'glib2'
  'kitty'       # required for GUI launcher
)
makedepends=('git' 'python-pip')

source=("git+https://github.com/NoSleepKid/resolvify.git")
sha256sums=('SKIP')

pkgver() {
  cd "$srcdir/resolvify"
  git describe --long --tags --always 2>/dev/null \
    | sed 's/^v//;s/-/.r/;s/-/./'
}

package() {
  cd "$srcdir/resolvify"

  # CLI
  install -Dm755 app/engine/resolvify \
    "$pkgdir/usr/bin/resolvify"

  # GUI
  install -Dm755 app/gui/resolvify-gui \
    "$pkgdir/usr/bin/resolvify-gui"

  # docs
  install -Dm644 README.md \
    "$pkgdir/usr/share/doc/$pkgname/README.md"

  # desktop entry
  mkdir -p "$pkgdir/usr/share/applications"
  cat > "$pkgdir/usr/share/applications/resolvify-gui.desktop" <<'EOF'
[Desktop Entry]
Name=Resolvify
Comment=OBS to DaVinci Resolve video converter
Exec=resolvify-gui
Icon=video-x-generic
Terminal=false
Type=Application
Categories=Video;Utility;
EOF
}
