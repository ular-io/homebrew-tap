class S7s < Formula
  desc "TUI for searching and resuming Claude Code, Antigravity, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.1.8"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.8/s7s-mac-arm64.tar.gz"
    sha256 "26c1086d59a200feda3f34a3e276b82c1cbe3ac775e6209f8187baa398366d6d"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.8/s7s-mac-amd64.tar.gz"
    sha256 "1972c575c938d9b3edd39f2161df28a985f353a998e2b0a5018bf482c756f1d8"
  end

  def install
    bin.install "s7s"
  end

  test do
    system bin/"s7s", "--version"
  end
end
