class S7s < Formula
  desc "TUI for searching and resuming Claude Code, Antigravity, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.1.14"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.14/s7s-mac-arm64.tar.gz"
    sha256 "770aba13c741959d0c0b3358369a25c46225e877b9a65dd09a470944002f49e2"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.14/s7s-mac-amd64.tar.gz"
    sha256 "cbb0b37e63b3dafb797bb32a9db3e32690e80a0c8ed754f176f6f5ccfe82d177"
  end

  def install
    bin.install "s7s"
  end

  test do
    system bin/"s7s", "--version"
  end
end
