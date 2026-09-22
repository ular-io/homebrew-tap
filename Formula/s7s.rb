class S7s < Formula
  desc "TUI for searching and resuming Claude Code, Antigravity, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.1.11"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.11/s7s-mac-arm64.tar.gz"
    sha256 "8733552e01396fde2cf84bc56c899f5ee5377a5d3d4b92686cd82c258870466b"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.11/s7s-mac-amd64.tar.gz"
    sha256 "8970b0270fd084b205cbfd90bcf47eb84281d9be7aad11c5f6e20f533edb55d7"
  end

  def install
    bin.install "s7s"
  end

  test do
    system bin/"s7s", "--version"
  end
end
