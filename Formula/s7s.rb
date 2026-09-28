class S7s < Formula
  desc "TUI for searching and resuming Claude Code, Antigravity, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.1.12"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.12/s7s-mac-arm64.tar.gz"
    sha256 "5ac5325b0e4ec26365fc2104c304912a9d2f793a450305543bf89f566a6a58b4"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.12/s7s-mac-amd64.tar.gz"
    sha256 "786d37bdb53fe6445f5f685b494ab55ce7c77190e6b15475ddadda39ee17ee9f"
  end

  def install
    bin.install "s7s"
  end

  test do
    system bin/"s7s", "--version"
  end
end
