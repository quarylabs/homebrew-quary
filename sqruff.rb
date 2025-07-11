# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.28.1"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.28.1/sqruff-darwin-aarch64.tar.gz"
    sha256 "a5c13a06230af2257724d6721936ef521dcccd3fdb27046a18c17a926247d0ed"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.28.1/sqruff-darwin-x86_64.tar.gz"
    sha256 "1d406aa5850368893e17c924d8e983196e9216a9e21310fe155455276f829247"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.28.1/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "59003a13754cd96f660eecc38ad69c0fef71f0c037a4dee9faa0d7c38a5b2508"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
