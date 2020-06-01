class GitSquash < Formula
  desc "Squash commits on branch just like GitHub's 'Squash and merge'"
  homepage "https://github.com/sheerun/git-squash"
  url "https://github.com/sheerun/git-squash/archive/v1.0.0.tar.gz"
  sha256 "07ad359722b672d35561c66b491335dbb30528641de90b7050567d679499ff9c"
  head "https://github.com/sheerun/git-squash.git"

  def install
    bin.install "git-hooks"
  end

  test do
    system "git", "init"
    output = shell_output("git squash").strip
    assert_match "Squash commits on branch just like GitHub", output
  end
end
