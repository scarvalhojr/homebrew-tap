class AocCli < Formula
  desc "Advent of Code command-line helper tool"
  homepage "https://github.com/scarvalhojr/aoc-cli"
  url "https://github.com/scarvalhojr/aoc-cli/archive/refs/tags/0.9.2.tar.gz"
  sha256 "d2aed9e149b57dcbed51c7331c95c9af29c98ca90925c340c9d50dae0c507a39"
  license "MIT"

  depends_on "rust" => :build

  on_linux do
    depends_on "pkg-config" => :build
    depends_on "openssl@1.1"
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "aoc-cli #{version}", `#{bin}/aoc --version`.chomp
  end
end
