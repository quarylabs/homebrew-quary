# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.10.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.10.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "3d3e4d7e81434d23a90ecda530509238c910314bc44cbb5ea52d58e700bfb98e"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.10.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "fbde3bc46b495bdc79dae9be945c005e554ab0bcb16fc66415d52949345a4429"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.10.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "c4f0c468db79848da23025e897d012f77685b6fe00986ed4698783affda9a6d6"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
