class S7s < Formula
  desc "Unified k9s-style TUI to search and resume Claude Code, Antigravity CLI, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.1.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.1/s7s-mac-arm64.tar.gz"
    sha256 "3cc3d2709ac5a007f3e329485d79f90b792580b0c394783c6e83d173938d34cb"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.1.1/s7s-mac-amd64.tar.gz"
    sha256 "dadab2cb1c16e0c19890e2baf4c707034c8d92e71df65c713ee57a90dbcf0be7"
  end

  def install
    bin.install "s7s"
  end

  test do
    system "#{bin}/s7s", "--version"
  end
end
