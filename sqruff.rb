# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.23"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.23/sqruff-darwin-aarch64.tar.gz"
    sha256 "28a8556d7abd88819525138fe89eeb100b0efb3dc127119f25deafbd85a641d5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.23/sqruff-darwin-x86_64.tar.gz"
    sha256 "cf4accb2d7e37cfd255544a7e2f3cf8cc92a3fe2b535916bb20d16639c6be67f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.23/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "aad4f711a7b9d37f28aa678c3f6e740005ed5f50a74eebff4358deb45b0d6fc2"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
