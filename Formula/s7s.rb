class S7s < Formula
  desc "Unified k9s-style TUI to search and resume Claude Code, Antigravity CLI, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.1.3"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.3/s7s-mac-arm64.tar.gz"
    sha256 "6645efc091052920033d550411a9e88fddd525e621c4905979f65a4a9ef35c58"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.3/s7s-mac-amd64.tar.gz"
    sha256 "408c34048ec1383c6e3def332bea35b9ecb85e48c6774e8686d1c8a6fec2991a"
  end

  def install
    bin.install "s7s"
  end

  test do
    system "#{bin}/s7s", "--version"
  end
end
