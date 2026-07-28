class S7s < Formula
  desc "Unified k9s-style TUI to search and resume Claude Code, Antigravity CLI, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.1.5"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.5/s7s-mac-arm64.tar.gz"
    sha256 "f58c447836128822575c88c77ea4a979a556d16c449ac3164022bb288550e438"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.5/s7s-mac-amd64.tar.gz"
    sha256 "0e3d500f18668faf3f10d8ce7c538dde398d138f5a62b07ea53886d3ee35a7ca"
  end

  def install
    bin.install "s7s"
  end

  test do
    system "#{bin}/s7s", "--version"
  end
end
