class S7s < Formula
  desc "TUI for searching and resuming Claude Code, Antigravity, and Codex sessions"
  homepage "https://github.com/ular-io/ular-s7s"
  version "0.2.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.1/s7s-mac-arm64.tar.gz"
    sha256 "d330434ecf3ebda3febbd14406b08ae6420e69866770aed99ea4754e743e24d4"
  else
    url "https://github.com/ular-io/ular-s7s/releases/download/v0.2.1/s7s-mac-amd64.tar.gz"
    sha256 "b80acd8e35615978f9805784f282b60b413ba47f191e1222a7c849794f4b7888"
  end

  def install
    bin.install "s7s"
  end

  test do
    system bin/"s7s", "--version"
  end
end
