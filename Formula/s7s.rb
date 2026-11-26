class S7s < Formula
  desc "TUI for searching and resuming Claude Code, Antigravity, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.2.7"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.7/s7s-mac-arm64.tar.gz"
    sha256 "49904dbae0f38896eac1662e492379113ff73ece68826d2bf5a850c7ca6c9909"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.7/s7s-mac-amd64.tar.gz"
    sha256 "a30237bf05f06832ee7896bcba8838832bfee143cd44e4783b4efef2450beab5"
  end

  def install
    bin.install "s7s"
  end

  test do
    system bin/"s7s", "--version"
  end
end
