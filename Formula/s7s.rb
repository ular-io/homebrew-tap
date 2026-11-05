class S7s < Formula
  desc "TUI for searching and resuming Claude Code, Antigravity, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.2.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.2/s7s-mac-arm64.tar.gz"
    sha256 "44bf97f50b9e70681f8c6a1e410948f9b9cc3b2e8be8c02026ed6085f3ec7cc0"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.2/s7s-mac-amd64.tar.gz"
    sha256 "c54ef0d8518f1d17cc1f2b5cba9cc9c7494d41505c2f74b740f7dd93ca39151c"
  end

  def install
    bin.install "s7s"
  end

  test do
    system bin/"s7s", "--version"
  end
end
