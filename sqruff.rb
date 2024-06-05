# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.6.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.6.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "a5f786ee527c8837410ed8b18e1df3e19bf44bca1d96a0e9ec1f2295d8aa0468"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.6.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "1dc45d5bd47467bd3c88d5f6f39ab5df2e4773b2ac18e19ba6ba0e268bd4186c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.6.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "9aea39fdf7684c570c31244ed2574e096832b71f67e9556fec395c6d360579e0"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
