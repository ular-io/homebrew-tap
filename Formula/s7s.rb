class S7s < Formula
  desc "TUI for searching and resuming Claude Code, Antigravity, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.2.3"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.3/s7s-mac-arm64.tar.gz"
    sha256 "167e82ed3fa98218d4cafe50928428f9986a13fad4bd1621698aca93ad03ab5e"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.3/s7s-mac-amd64.tar.gz"
    sha256 "c2e48468530423f1f63e0344a3bae93fd3c35b0c92e66d50af9bf781a80015bf"
  end

  def install
    bin.install "s7s"
  end

  test do
    system bin/"s7s", "--version"
  end
end
