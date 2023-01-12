class AocCli < Formula
  desc "Advent of Code command-line helper tool"
  homepage "https://github.com/scarvalhojr/aoc-cli"
  url "https://github.com/scarvalhojr/aoc-cli/archive/refs/tags/0.12.0.tar.gz"
  sha256 "5bd2eef8a310564c122be34ea9116967fe887ea549146adf38f4fbb0cddc0539"
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
