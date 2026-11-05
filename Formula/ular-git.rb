class UlarGit < Formula
  desc "TUI to watch many git repositories, their worktrees, changes, and diffs"
  homepage "https://github.com/ular-io/ular-git"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ular-io/ular-git/releases/download/v0.1.0/ular-git-mac-arm64.tar.gz"
    sha256 "6d12638fc707669e3f8e947e61949628c8e54f86549f8758a47ed457382607e7"
  else
    url "https://github.com/ular-io/ular-git/releases/download/v0.1.0/ular-git-mac-amd64.tar.gz"
    sha256 "b7223990ab7055cbf1c8f6073417a561c18d880f3c3a9df1cbb51dea2e43fe7d"
  end

  def install
    bin.install "ular-git"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ular-git --version")
  end
end
