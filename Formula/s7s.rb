class S7s < Formula
  desc "TUI for searching and resuming Claude Code, Antigravity, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.2.4"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.4/s7s-mac-arm64.tar.gz"
    sha256 "66d7f3e4d16d863fca1cac1c3260a17597b3dc8ae9b5d9534d27ea4aae25d6d0"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.4/s7s-mac-amd64.tar.gz"
    sha256 "f11e2bd45edd192166c80cd7f32cefebb3022a1047fbab6b594b8f7418226fa4"
  end

  def install
    bin.install "s7s"
  end

  test do
    system bin/"s7s", "--version"
  end
end
