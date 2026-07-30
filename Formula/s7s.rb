class S7s < Formula
  desc "Unified k9s-style TUI to search and resume Claude Code, Antigravity CLI, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.1.6"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.6/s7s-mac-arm64.tar.gz"
    sha256 "168bdb4b8247555322d3f58fa81221110bc10693213597e29f130edc630f4fb5"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.6/s7s-mac-amd64.tar.gz"
    sha256 "eced18740bbe1db5a2b72a354e991aee450ca6df2d6a6dc79fdace236c33b390"
  end

  def install
    bin.install "s7s"
  end

  test do
    system "#{bin}/s7s", "--version"
  end
end
