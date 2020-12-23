class GitSquash < Formula
  desc "Squash commits on branch just like GitHub's 'Squash and merge'"
  homepage "https://github.com/sheerun/git-squash"
  url "https://github.com/sheerun/git-squash/archive/v1.0.1.tar.gz"
  sha256 "6ccaece4c3e93c0d6355a85ba1fc09151f81eca4693c58f79709d2301a9d9629"
  head "https://github.com/sheerun/git-squash.git"

  def install
    bin.install "git-squash"
  end

  test do
    system "git", "init"
    output = shell_output("git squash").strip
    assert_match "Squash commits on branch just like GitHub", output
  end
end
