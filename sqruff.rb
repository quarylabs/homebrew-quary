# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.5"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.5/sqruff-darwin-aarch64.tar.gz"
    sha256 "30e0bdb5f8a1a21025c86bd2fb451812893daeceddc7cbc63b28dfd8822c1b4c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.5/sqruff-darwin-x86_64.tar.gz"
    sha256 "ac24c8fe552cd047c311fb0a21603593bed04ce0733d0e1d728535eafe797dbf"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.5/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "2678979c3cca8da7e890e61d8f37935a05dd092b99734d94159f455d84b0b7ad"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
