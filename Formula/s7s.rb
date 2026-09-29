class S7s < Formula
  desc "TUI for searching and resuming Claude Code, Antigravity, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.1.13"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.13/s7s-mac-arm64.tar.gz"
    sha256 "0152f86eced86ad4deef0df10c4f9f3e2772d32417ad1a2e3dd2989c9750e185"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.13/s7s-mac-amd64.tar.gz"
    sha256 "21b8aeab0c0a1dccea81a36e1d8d00b93e452be4349b6d65517d76203c5e5930"
  end

  def install
    bin.install "s7s"
  end

  test do
    system bin/"s7s", "--version"
  end
end
