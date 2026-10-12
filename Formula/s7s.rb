class S7s < Formula
  desc "TUI for searching and resuming Claude Code, Antigravity, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.2.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.0/s7s-mac-arm64.tar.gz"
    sha256 "609d29ca7b2148ab6f6f5d775e774da442a1bc504f1e9fbf9ffe06df6d7c4261"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.0/s7s-mac-amd64.tar.gz"
    sha256 "e4e7c9f0f67eb935636e759f376d173336513ae254d9fc7fb5ec06a5d3d56d09"
  end

  def install
    bin.install "s7s"
  end

  test do
    system bin/"s7s", "--version"
  end
end
