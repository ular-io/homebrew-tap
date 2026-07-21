class S7s < Formula
  desc "Unified k9s-style TUI to search and resume Claude Code, Antigravity CLI, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.1.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.2/s7s-mac-arm64.tar.gz"
    sha256 "189c33d6e557dd1b851d3a7edf7c466685b4919fb39e553bfd84a0ad1cb5c3ad"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.2/s7s-mac-amd64.tar.gz"
    sha256 "a7c0083cf4e57e13661c09a0d99c29cecb4f2362bcc8153560cd4e0d13e719ed"
  end

  def install
    bin.install "s7s"
  end

  test do
    system "#{bin}/s7s", "--version"
  end
end
