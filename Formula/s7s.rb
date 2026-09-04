class S7s < Formula
  desc "TUI for searching and resuming Claude Code, Antigravity, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.1.9"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.9/s7s-mac-arm64.tar.gz"
    sha256 "836a5e955b530cf89f4f994fc8ab1563b9e9805af2bb64615af5c29e56f47837"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.9/s7s-mac-amd64.tar.gz"
    sha256 "367a8139e06378214187b09fde6b0f2119a4a61b6b7ab4646cc29c7ee840c842"
  end

  def install
    bin.install "s7s"
  end

  test do
    system bin/"s7s", "--version"
  end
end
