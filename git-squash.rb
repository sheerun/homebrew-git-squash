class GitSquash < Formula
  desc "Squash commits on branch just like GitHub's 'Squash and merge'"
  homepage "https://github.com/sheerun/git-squash"
  url "https://github.com/sheerun/git-squash/archive/v1.0.2.tar.gz"
  sha256 "4244e9b5c77f8162794077afbb3774b7574c2875f04903b3e3ba9141d982f953"
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
