# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.21.9"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.9/sqruff-darwin-aarch64.tar.gz"
    sha256 "56ba2a37b75143b780a9c561c04a41d7cbbc6ac28a3c38075516e0e3e70ca0ba"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.9/sqruff-darwin-x86_64.tar.gz"
    sha256 "d90670dc41c469e85d462bfded2a4a06354161f4274c24c377e0b50870116ad8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.9/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "26fe3197f5ced9b8eeb3b0c7a617eeed11928ed63de634711f042e280b340ecf"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
