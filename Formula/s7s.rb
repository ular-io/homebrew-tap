class S7s < Formula
  desc "Unified k9s-style TUI to search and resume Claude Code, Antigravity CLI, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.0/s7s-mac-arm64.tar.gz"
    sha256 "9cb86a132f5d67d2f08e1cb576327e82b10ee23073a4c493863c3bceda0ef044"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.0/s7s-mac-amd64.tar.gz"
    sha256 "3d2177e641a202535c3379aef6a500d8b949837e4661033a15f9a408701bab29"
  end

  def install
    bin.install "s7s"
  end

  test do
    system "#{bin}/s7s", "--version"
  end
end
