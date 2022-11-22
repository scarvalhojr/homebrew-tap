class AocCli < Formula
  desc "Advent of Code command-line helper tool"
  homepage "https://github.com/scarvalhojr/aoc-cli"
  url "https://github.com/scarvalhojr/aoc-cli/archive/refs/tags/0.4.8.tar.gz"
  sha256 "16812eb3c809654644ca11469d8dd7825f5717d0cd7673696009414e3d086efd"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "aoc-cli #{version}", `#{bin}/aoc --version`.chomp
  end
end
