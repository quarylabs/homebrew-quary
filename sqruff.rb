# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.7.1"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.1/sqruff-darwin-aarch64.tar.gz"
    sha256 "8be91219e60204042d09224876c8738ac1c866b222bca58718cb45b17bc8d6cd"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.1/sqruff-darwin-x86_64.tar.gz"
    sha256 "c2f0685f4d76493ea7bc40a48fe2b98608724f0b5b80fc5302c8f1751245210a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.1/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "29e0ac7913d5c76c5bc9c54ef7997d0fca65aa6a41af8003158671020ba61929"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
