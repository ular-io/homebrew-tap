class S7s < Formula
  desc "TUI for searching and resuming Claude Code, Antigravity, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.2.5"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.5/s7s-mac-arm64.tar.gz"
    sha256 "c556b6c81354eaf4ae9386355f5c9da59b67c5f0806bb6603e5d8e410a5ad15a"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.5/s7s-mac-amd64.tar.gz"
    sha256 "8c1cf67408e166d7782ad698670ed171d117c0c7f0c7e57dc2f21acad2abf9b2"
  end

  def install
    bin.install "s7s"
  end

  test do
    system bin/"s7s", "--version"
  end
end
