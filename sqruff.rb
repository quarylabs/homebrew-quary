# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.0.13"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.0.13/sqruff-darwin-aarch64.tar.gz"
    sha256 "fcb42ff3e3a876d5c2dbb641c99fcf3d1c469519545e1936bb3affc54c787401"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.0.13/sqruff-darwin-x86_64.tar.gz"
    sha256 "522426d70b6be8799efcb5884fabe8576890562e979a99a437de234a30d8017d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.0.13/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "d2c0161d2c5deda5839b5f7c8124d8dfed80a44883ecb7d6b82750d9cb35170c"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
