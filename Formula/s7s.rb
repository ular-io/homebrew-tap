class S7s < Formula
  desc "TUI for searching and resuming Claude Code, Antigravity, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.2.6"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.6/s7s-mac-arm64.tar.gz"
    sha256 "be39dbfb42a86debb5549b5c1f39be5fa1af6649b96f263f2e051b8d6759689a"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.6/s7s-mac-amd64.tar.gz"
    sha256 "c1310f5f0b59537265846bf051b3f18134de0e61ce2de41f4772dbfb96f294f5"
  end

  def install
    bin.install "s7s"
  end

  test do
    system bin/"s7s", "--version"
  end
end
