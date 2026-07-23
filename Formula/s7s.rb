class S7s < Formula
  desc "Unified k9s-style TUI to search and resume Claude Code, Antigravity CLI, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.1.4"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.4/s7s-mac-arm64.tar.gz"
    sha256 "2e56d79dcc953f05b6a3ae35db59353d42e9e4764f0b0f0d9350e46b34ba5347"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.4/s7s-mac-amd64.tar.gz"
    sha256 "9bd152977cfaffc472c1b128cc021033b2bb90f099f18a02fbb37f2a376a6336"
  end

  def install
    bin.install "s7s"
  end

  test do
    system "#{bin}/s7s", "--version"
  end
end
