# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.18.3"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.3/sqruff-darwin-aarch64.tar.gz"
    sha256 "c217328cd690f4a5a3106c64d6d01fe42ccb0c58a4cad2ffa19cd6c380063a38"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.3/sqruff-darwin-x86_64.tar.gz"
    sha256 "4148dc589b2a0aca2f3b6367373e97cb1b5fe97b96c917c4e4697bae859a91e8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.3/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "f9ce0568c21e76253ddd6bb36eedf785913b60d22b69a5ad7cf982b7e11b0db9"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
