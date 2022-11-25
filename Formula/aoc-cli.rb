class AocCli < Formula
  desc "Advent of Code command-line helper tool"
  homepage "https://github.com/scarvalhojr/aoc-cli"
  url "https://github.com/scarvalhojr/aoc-cli/archive/refs/tags/0.5.0.tar.gz"
  sha256 "fcec007c43d2c0b233c83e800463ccb4fdc4637938f122c26d5cc479aff24cf6"
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
