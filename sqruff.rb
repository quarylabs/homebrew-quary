# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.23.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.23.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "462c90108a8af709d217c2a8250266527f6b492f9312c4def80e2cdd6b7d5cbf"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.23.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "6122feffe153200cafd454d50dcd0cdb9cf9f1af40bb669511deffc0ac85939c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.23.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "388bbe098058cb5d4686de1ad536efdfddd09647f76c8674a42e88b84839d4cf"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
