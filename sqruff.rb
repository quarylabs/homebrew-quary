# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.21.6"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.6/sqruff-darwin-aarch64.tar.gz"
    sha256 "2230cc4457235bb008619b0bad97aeed5f39789ccbebc6006b8b63fe4f4b3ffd"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.6/sqruff-darwin-x86_64.tar.gz"
    sha256 "f835dd5eb7c68ba0a8f9f583d0769d11519e9c68a68d3b5819f8416ace9e0878"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.6/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "2bd3c29a0f4518ea1e81370d139a57734a1ddc2c033454f9c5cd9f933ecac348"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
