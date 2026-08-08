class S7s < Formula
  desc "Unified k9s-style TUI to search and resume Claude Code, Antigravity CLI, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.1.7"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.7/s7s-mac-arm64.tar.gz"
    sha256 "9c7fe4f984db74a96aec69e124779a0b33397991ca11dd4f0bf8cbe22f854e2e"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.7/s7s-mac-amd64.tar.gz"
    sha256 "8b5249dae7cf6444ec0338148e428659e0b7d2b9e629e184da2bb5866c07a47c"
  end

  def install
    bin.install "s7s"
  end

  test do
    system "#{bin}/s7s", "--version"
  end
end
