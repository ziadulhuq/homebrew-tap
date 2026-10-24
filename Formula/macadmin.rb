# Homebrew formula for macadmin, published to ziadulhuq/homebrew-tap as
# Formula/macadmin.rb by installer/make-release-mac.sh (it fills in the
# version and sha256). Installs the prebuilt program from the public release.
class Macadmin < Formula
  desc "Terminal app for your Mac's apps, services, packages, AI models and network"
  homepage "https://github.com/ziadulhuq/macadmin-releases"
  url "https://github.com/ziadulhuq/macadmin-releases/releases/download/v1.0.0/macadmin-1.0.0.aarch64.tar.gz"
  sha256 "095c1d026c56a0306e79ca05a7f21697fab05b44557ebb2ea35d98c80545cd7b"

  depends_on arch: :arm64

  def install
    bin.install "macadmin"
  end

  def caveats
    <<~EOS
      Run  macadmin init  once: it checks what macadmin needs, asks for your
      models folder and whether macadmin may use the internet.
    EOS
  end

  test do
    assert_match "macadmin #{version}", shell_output("#{bin}/macadmin --version")
  end
end
