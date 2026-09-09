class S7s < Formula
  desc "TUI for searching and resuming Claude Code, Antigravity, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.1.10"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.10/s7s-mac-arm64.tar.gz"
    sha256 "2f72803a027b25cdda1752493971f45274f3f448f43664ada6158c2c647915ca"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.10/s7s-mac-amd64.tar.gz"
    sha256 "ce79ca130d246a9f38dc6ff2f96155eeaac7f3b8e0c528982effb0ce8b0f1bb6"
  end

  def install
    bin.install "s7s"
  end

  test do
    system bin/"s7s", "--version"
  end
end
