# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.28.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.28.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "a6a2f068051e0147d18e299425c4cf8070ca65cec0e7febff7ec5231033fb954"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.28.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "8cbfa90a0d1eccec67ceae475d4ea753a4e9ad72f42039358183f983b435db95"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.28.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "82baecc91f252a8e80b79fc0bd6764f50bb48bd47019c69a18873f098c390c65"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
