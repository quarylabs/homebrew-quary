# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.22"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.22/sqruff-darwin-aarch64.tar.gz"
    sha256 "f318441d27e008fc324ac000d49d438266b3ba633ec56bf50be7255e5832c2ed"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.22/sqruff-darwin-x86_64.tar.gz"
    sha256 "c609a8f211f5c02b0fb29f4e8c8e2b700dfd81608554bd7c8eb38a121af08d67"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.22/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "d537576fe34d9f3f7817ea1c4f4649ba5df9a61858993507eadd428e2ad116bb"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
