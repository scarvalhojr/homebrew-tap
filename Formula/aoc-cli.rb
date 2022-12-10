class AocCli < Formula
  desc "Advent of Code command-line helper tool"
  homepage "https://github.com/scarvalhojr/aoc-cli"
  url "https://github.com/scarvalhojr/aoc-cli/archive/refs/tags/0.8.0.tar.gz"
  sha256 "91ade41abd920bd1a5a54e329b747a400c16f7889df484b4d85e6e1007f1bcc6" 
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
