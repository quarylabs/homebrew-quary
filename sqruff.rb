# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.21.8"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.8/sqruff-darwin-aarch64.tar.gz"
    sha256 "b99392b909de301a8edda4659e6da3d8a67eb74c2d0e2f0599a04ecfeb1cc176"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.8/sqruff-darwin-x86_64.tar.gz"
    sha256 "40f773a7f5eaab44af4475a1fab31836ec832c2aba8f3aaca86623be4064770b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.8/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "dc51ac80209a614995f83053a1a85874ebf44b8bbbaba222a1788b2eb7ca909f"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
