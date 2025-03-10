# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.15"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.15/sqruff-darwin-aarch64.tar.gz"
    sha256 "112e64971492caa58ea119b71ab2e6ee294bd13c44db97b2e8d3ddcc24a816bd"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.15/sqruff-darwin-x86_64.tar.gz"
    sha256 "c38249856e52edf7365bcdd39a0726a5a8c8ce2a8fd5af17d8b96996e332d1b2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.15/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "d984f5b5a5a2970c97d39d4a904d5f3440e425382addb651022ecce674fd4541"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
