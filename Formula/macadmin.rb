# Homebrew formula for macadmin, published to ziadulhuq/homebrew-tap as
# Formula/macadmin.rb by installer/make-release-mac.sh (it fills in the
# version and sha256). Installs the prebuilt program from the public release.
class Macadmin < Formula
  desc "Desktop and terminal app for your Mac's apps, services, packages, AI models"
  homepage "https://github.com/ziadulhuq/macadmin-releases"
  url "https://github.com/ziadulhuq/macadmin-releases/releases/download/v1.3.1/macadmin-1.3.1.aarch64.tar.gz"
  sha256 "abd9fde71c912b9ed1e9f218f015ea1fa45013b5a03ebf8eb3761a1d3bcf0746"

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
