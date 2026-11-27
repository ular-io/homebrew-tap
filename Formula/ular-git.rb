class UlarGit < Formula
  desc "TUI to watch many git repositories, their worktrees, changes, and diffs"
  homepage "https://github.com/ular-io/ular-git"
  version "0.1.1"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-git/releases/download/v0.1.1/ular-git-mac-arm64.tar.gz"
    sha256 "01c25607686e19657ddcd021ef14e8443b4eca9192808eed5a7363077387d1f5"
  else
    url "https://github.com/ular-io/ular-git/releases/download/v0.1.1/ular-git-mac-amd64.tar.gz"
    sha256 "047225071cb88feb3a212c76d4684a0d89e6a123b8abb4453a41187ea176210c"
  end

  def install
    bin.install "ular-git"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ular-git --version")
  end
end
