# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.20.1"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.20.1/sqruff-darwin-aarch64.tar.gz"
    sha256 "2307f4d8341c25bd3e555524da057c9629862572995b65d2d9fd389613c0cb68"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.20.1/sqruff-darwin-x86_64.tar.gz"
    sha256 "6f4547320eddf81e57a3348dc3e07a84f8e392b12d893446bf4cefd40bc4dbad"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.20.1/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "e8ecdaed21c668b16a7dd198083dc6b552616c493e975eae428801037399b77e"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
